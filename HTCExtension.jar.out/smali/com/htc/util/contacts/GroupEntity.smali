.class public Lcom/htc/util/contacts/GroupEntity;
.super Ljava/lang/Object;
.source "GroupEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/GroupEntity$GroupData;,
        Lcom/htc/util/contacts/GroupEntity$RawContactData;,
        Lcom/htc/util/contacts/GroupEntity$AccountData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_APPLY:I = 0x190

.field static final RAW_CONTACT_AccountNameIdx:I = 0x1

.field static final RAW_CONTACT_AccountTypeIdx:I = 0x2

.field static final RAW_CONTACT_CONTACTIdx:I = 0x3

.field static final RAW_CONTACT_DATA_SETIdx:I = 0x5

.field static final RAW_CONTACT_DELETEDIdx:I = 0x4

.field static final RAW_CONTACT_IDIdx:I = 0x0

.field static final TAG:Ljava/lang/String; = "GroupEntity"

.field public static final mSelectionNotShowGooglePlus:Ljava/lang/String; = " ((groups.account_type= \'com.google\' AND (groups.data_set is null or groups.data_set<>\'plus\')) OR ( groups.account_type<>\'com.google\'))"

.field static final sContactProjection:[Ljava/lang/String;

.field static final sGroupProjection:[Ljava/lang/String;

.field static final sRawContactProjection:[Ljava/lang/String;


# instance fields
.field public mAccountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupEntity$AccountData;",
            ">;"
        }
    .end annotation
.end field

.field public mAfterContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mGroupIsReadOnly:I

.field public mGroupsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field private mJpegData:[B

.field public mPhotoRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/util/contacts/GroupEntity;->sContactProjection:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "account_name"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const-string v1, "deleted"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data_set"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/contacts/GroupEntity;->sRawContactProjection:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "account_name"

    aput-object v1, v0, v5

    const-string v1, "account_type"

    aput-object v1, v0, v6

    const-string v1, "deleted"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "group_is_read_only"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/contacts/GroupEntity;->sGroupProjection:[Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/contacts/GroupEntity;->mGroupIsReadOnly:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mGroupsList:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    .line 1442
    return-void
.end method

.method public static CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "dataSet1"
    .parameter "dataSet2"

    .prologue
    .line 1412
    if-ne p0, p1, :cond_0

    .line 1413
    const/4 v0, 0x1

    .line 1418
    :goto_0
    return v0

    .line 1415
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 1416
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1418
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private addGroupMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z
    .locals 26
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupEntity$RawContactData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 831
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 832
    const/4 v2, 0x1

    .line 910
    :goto_0
    return v2

    .line 835
    :cond_0
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .local v21, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v20, 0x0

    .line 837
    .local v20, operation:Landroid/content/ContentProviderOperation;
    const/4 v10, 0x0

    .line 839
    .local v10, applyCount:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 840
    .local v5, selection:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/util/contacts/GroupEntity;->sGroupProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 841
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_7

    .line 842
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 844
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 845
    .local v16, id:J
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 846
    .local v8, accountName:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 847
    .local v9, accountType:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 849
    .local v24, sourceId:Ljava/lang/String;
    new-instance v13, Lcom/htc/util/contacts/GroupEntity$AccountData;

    invoke-direct {v13, v8, v9}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    .local v13, data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/util/contacts/GroupEntity$RawContactData;

    .line 852
    .local v23, rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    new-instance v22, Lcom/htc/util/contacts/GroupEntity$AccountData;

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    .local v22, rawdata:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/htc/util/contacts/GroupEntity$AccountData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 859
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 860
    .local v25, values:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v2, "raw_contact_id"

    move-object/from16 v0, v23

    iget-wide v3, v0, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 862
    const-string v2, "data1"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 864
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 865
    const-string v2, "data5"

    const-string v3, "1"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_3
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    iget-wide v3, v0, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 870
    .local v18, insertGroupMemberUri:Landroid/net/Uri;
    const-string v2, "data"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 874
    .local v19, insertUri:Landroid/net/Uri;
    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 875
    .local v11, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 876
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    .line 877
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    add-int/lit8 v10, v10, 0x1

    .line 879
    const/16 v2, 0x190

    if-lt v10, v2, :cond_2

    .line 881
    :try_start_0
    const-string v2, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 882
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 883
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 884
    :catch_0
    move-exception v14

    .line 885
    .local v14, e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 892
    .end local v11           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v14           #e:Landroid/os/RemoteException;
    .end local v18           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v19           #insertUri:Landroid/net/Uri;
    .end local v22           #rawdata:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v23           #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .end local v25           #values:Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 894
    .end local v8           #accountName:Ljava/lang/String;
    .end local v9           #accountType:Ljava/lang/String;
    .end local v13           #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #id:J
    .end local v24           #sourceId:Ljava/lang/String;
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 895
    const/4 v12, 0x0

    .line 896
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 898
    :try_start_1
    const-string v2, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 899
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 900
    const/4 v10, 0x0

    .line 906
    :cond_6
    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 910
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 901
    :catch_1
    move-exception v14

    .line 902
    .restart local v14       #e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 903
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    goto :goto_2

    .line 886
    .restart local v8       #accountName:Ljava/lang/String;
    .restart local v9       #accountType:Ljava/lang/String;
    .restart local v11       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v13       #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v16       #id:J
    .restart local v18       #insertGroupMemberUri:Landroid/net/Uri;
    .restart local v19       #insertUri:Landroid/net/Uri;
    .restart local v22       #rawdata:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .restart local v23       #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .restart local v24       #sourceId:Ljava/lang/String;
    .restart local v25       #values:Landroid/content/ContentValues;
    :catch_3
    move-exception v2

    goto/16 :goto_1
.end method

.method private static final broadcastFavoriteChangeDeletion(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter
    .parameter "groupIsReadOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1160
    .local p2, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    .line 1161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1163
    const-string v1, "contact_id_list"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1164
    const-string v1, "delete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1166
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1168
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "groupName"

    .prologue
    .line 1437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1438
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1439
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1440
    return-void
.end method

.method private static final broadcastGroupModifiaction(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1143
    if-eqz p0, :cond_0

    .line 1144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.GROUP_MODIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1147
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static final broadcastGroupModifiaction(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "groupIsReadOnly"

    .prologue
    .line 1150
    if-eqz p0, :cond_0

    .line 1151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.GROUP_MODIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1156
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private buildDiff(Landroid/content/ContentResolver;)V
    .locals 20
    .parameter "resolver"

    .prologue
    .line 754
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v14, outAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v14}, Lcom/htc/util/contacts/GroupEntity;->processMember(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 758
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v4, addGroupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/util/contacts/GroupEntity$AccountData;

    .line 761
    .local v8, data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 762
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 767
    .end local v8           #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v15, removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 769
    .local v12, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 770
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 773
    .end local v12           #id:J
    :cond_3
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v16, removedMemberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    invoke-static {v0, v1, v15, v2, v3}, Lcom/htc/util/contacts/GroupEntity;->processMember(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 783
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v5, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 785
    .restart local v12       #id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 786
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 789
    .end local v12           #id:J
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v6, addedMemberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v5, v6, v2}, Lcom/htc/util/contacts/GroupEntity;->processMember(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 800
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/htc/util/contacts/GroupEntity;->createNewGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z

    move-result v7

    .line 802
    .local v7, bNewGroups:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/htc/util/contacts/GroupEntity;->addGroupMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z

    .line 804
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/contacts/GroupEntity;->removeGroupMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    .line 810
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_9

    .line 811
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v9, deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/util/contacts/GroupEntity$RawContactData;

    .line 813
    .local v8, data:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    iget-wide v0, v8, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    long-to-int v10, v0

    .line 814
    .local v10, deletedPerson:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 816
    .end local v8           #data:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .end local v10           #deletedPerson:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/contacts/GroupEntity;->mGroupIsReadOnly:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2}, Lcom/htc/util/contacts/GroupEntity;->broadcastFavoriteChangeDeletion(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 822
    .end local v9           #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/contacts/GroupEntity;->mGroupIsReadOnly:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/htc/util/contacts/GroupEntity;->broadcastGroupModifiaction(Landroid/content/Context;Ljava/lang/String;I)V

    .line 826
    :cond_8
    return-void

    .line 818
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_7

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/htc/util/contacts/GroupEntity;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private clearAllGroupIfNoAnyMember(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    .line 945
    iget-object v2, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/htc/util/contacts/GroupEntity;->queryContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 946
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 948
    .local v1, hasNoMember:Z
    if-eqz v0, :cond_1

    .line 949
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 950
    const/4 v1, 0x1

    .line 951
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 955
    :cond_1
    if-eqz v1, :cond_2

    .line 956
    invoke-direct {p0, p1}, Lcom/htc/util/contacts/GroupEntity;->deleteAllGroups(Landroid/content/ContentResolver;)V

    .line 958
    :cond_2
    return-void
.end method

.method private createNewGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Z
    .locals 27
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupEntity$AccountData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 971
    .local p2, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v19, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v18, 0x0

    .line 973
    .local v18, operation:Landroid/content/ContentProviderOperation;
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 975
    .local v26, visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .local v14, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$GroupData;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/util/contacts/GroupEntity$AccountData;

    .line 977
    .local v8, account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    iget-object v4, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    iget-object v5, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->dataSet:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/htc/util/contacts/GroupEntity;->isGroupMemeberReadOnlyAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 983
    const/16 v25, 0x1

    .line 984
    .local v25, visible:I
    iget-object v3, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 985
    iget-object v3, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 986
    .local v23, value:Ljava/lang/Integer;
    if-nez v23, :cond_3

    .line 987
    iget-object v3, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/htc/util/contacts/ContactsUtility;->isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v25, 0x1

    .line 988
    :goto_1
    iget-object v3, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    .end local v23           #value:Ljava/lang/Integer;
    :cond_1
    :goto_2
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 996
    .local v24, values:Landroid/content/ContentValues;
    const-string v3, "account_name"

    iget-object v4, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v3, "account_type"

    iget-object v4, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string v3, "title"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string v3, "notes"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string v3, "group_visible"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1002
    const-string v3, "group_is_read_only"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/util/contacts/GroupEntity;->mGroupIsReadOnly:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1004
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1005
    .local v10, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1006
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    .line 1007
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    new-instance v2, Lcom/htc/util/contacts/GroupEntity$GroupData;

    iget-object v3, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    iget-object v4, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    iget-object v5, v8, Lcom/htc/util/contacts/GroupEntity$AccountData;->dataSet:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-direct/range {v2 .. v7}, Lcom/htc/util/contacts/GroupEntity$GroupData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1012
    .local v2, data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 987
    .end local v2           #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v10           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v24           #values:Landroid/content/ContentValues;
    .restart local v23       #value:Ljava/lang/Integer;
    :cond_2
    const/16 v25, 0x0

    goto :goto_1

    .line 991
    :cond_3
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v25

    goto :goto_2

    .line 1016
    .end local v8           #account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v23           #value:Ljava/lang/Integer;
    .end local v25           #visible:I
    :cond_4
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 1017
    :cond_5
    const/4 v3, 0x0

    .line 1044
    .end local v15           #i$:Ljava/util/Iterator;
    :goto_3
    return v3

    .line 1020
    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_6
    :try_start_0
    const-string v3, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v21

    .line 1021
    .local v21, results:[Landroid/content/ContentProviderResult;
    const/16 v16, 0x0

    .line 1022
    .local v16, index:I
    if-nez v21, :cond_7

    .line 1023
    const/4 v3, 0x0

    goto :goto_3

    .line 1025
    :cond_7
    move-object/from16 v9, v21

    .local v9, arr$:[Landroid/content/ContentProviderResult;
    array-length v0, v9

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_4
    move/from16 v0, v17

    if-ge v15, v0, :cond_9

    aget-object v20, v9, v15

    .line 1026
    .local v20, resultData:Landroid/content/ContentProviderResult;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v22, v0

    .line 1027
    .local v22, uri:Landroid/net/Uri;
    invoke-static/range {v22 .. v22}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 1028
    .local v12, gid:J
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/GroupEntity$GroupData;

    .line 1029
    .restart local v2       #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    if-eqz v2, :cond_8

    .line 1030
    iput-wide v12, v2, Lcom/htc/util/contacts/GroupEntity$GroupData;->_Id:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1032
    :cond_8
    add-int/lit8 v16, v16, 0x1

    .line 1025
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1034
    .end local v2           #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v9           #arr$:[Landroid/content/ContentProviderResult;
    .end local v12           #gid:J
    .end local v15           #i$:I
    .end local v16           #index:I
    .end local v17           #len$:I
    .end local v20           #resultData:Landroid/content/ContentProviderResult;
    .end local v21           #results:[Landroid/content/ContentProviderResult;
    .end local v22           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 1036
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1037
    const/4 v3, 0x0

    goto :goto_3

    .line 1038
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 1040
    .local v11, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v11}, Landroid/content/OperationApplicationException;->printStackTrace()V

    .line 1041
    const/4 v3, 0x0

    goto :goto_3

    .line 1044
    .end local v11           #e:Landroid/content/OperationApplicationException;
    .restart local v9       #arr$:[Landroid/content/ContentProviderResult;
    .restart local v15       #i$:I
    .restart local v16       #index:I
    .restart local v17       #len$:I
    .restart local v21       #results:[Landroid/content/ContentProviderResult;
    :cond_9
    const/4 v3, 0x1

    goto :goto_3
.end method

.method private deleteAllGroups(Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "resolver"

    .prologue
    .line 963
    iget-object v2, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, key:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 966
    .local v1, selection:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 967
    return-void
.end method

.method private dumpContactList()V
    .locals 3

    .prologue
    .line 743
    const-string v0, "GroupEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpContactList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-string v0, "GroupEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAfterContactList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void
.end method

.method public static fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/contacts/GroupEntity;
    .locals 29
    .parameter "resolver"
    .parameter "targetName"

    .prologue
    .line 217
    sget-object v28, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 218
    .local v28, uri:Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 219
    .local v24, pattern:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "deleted"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = 0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, selection:Ljava/lang/String;
    const/16 v22, 0x0

    .line 221
    .local v22, iterator:Landroid/content/EntityIterator;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v18, groupsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupDelta;>;"
    new-instance v17, Lcom/htc/util/contacts/GroupEntity;

    invoke-direct/range {v17 .. v17}, Lcom/htc/util/contacts/GroupEntity;-><init>()V

    .line 224
    .local v17, groupEntity:Lcom/htc/util/contacts/GroupEntity;
    const-string v2, "content://com.android.contacts/groups_raw"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 227
    .local v3, queryUri:Landroid/net/Uri;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 228
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_5

    .line 229
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 230
    .local v21, idIdx:I
    const-string v2, "account_name"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 231
    .local v9, accountNameIdx:I
    const-string v2, "account_type"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 232
    .local v10, accountTypeIdx:I
    const-string v2, "title"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 233
    .local v27, titleIdx:I
    const-string v2, "sourceid"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 234
    .local v26, sourceIdIdx:I
    const-string v2, "system_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 235
    .local v8, SystemIdIdx:I
    const-string v2, "notes"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 236
    .local v23, notesIdx:I
    const-string v2, "deleted"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 237
    .local v15, deletedIdx:I
    const-string v2, "photo"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 241
    .local v25, photoIdx:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 243
    new-instance v16, Lcom/htc/util/contacts/GroupDelta;

    invoke-direct/range {v16 .. v16}, Lcom/htc/util/contacts/GroupDelta;-><init>()V

    .line 244
    .local v16, delta:Lcom/htc/util/contacts/GroupDelta;
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountName:Ljava/lang/String;

    .line 245
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountType:Ljava/lang/String;

    .line 246
    move/from16 v0, v26

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mSourceId:Ljava/lang/String;

    .line 247
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mSystemId:Ljava/lang/String;

    .line 249
    const-string v2, "com.htc.android.myphonebook"

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 251
    .local v11, bytes:[B
    if-eqz v11, :cond_1

    array-length v2, v11

    if-lez v2, :cond_1

    .line 252
    const/4 v2, 0x0

    array-length v4, v11

    invoke-static {v11, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mTiIcon:Landroid/graphics/Bitmap;

    .line 257
    .end local v11           #bytes:[B
    :cond_1
    :goto_1
    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v16

    iput-wide v6, v0, Lcom/htc/util/contacts/GroupDelta;->mId:J

    .line 258
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/htc/util/contacts/GroupDelta;->mIsDeleted:I

    .line 259
    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 261
    .restart local v11       #bytes:[B
    if-eqz v11, :cond_2

    array-length v2, v11

    if-lez v2, :cond_2

    .line 262
    const/4 v2, 0x0

    array-length v4, v11

    invoke-static {v11, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mBitmap:Landroid/graphics/Bitmap;

    .line 265
    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v14, Lcom/htc/util/contacts/GroupEntity$AccountData;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountType:Ljava/lang/String;

    invoke-direct {v14, v2, v4}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .local v14, data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 272
    .end local v11           #bytes:[B
    .end local v14           #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v16           #delta:Lcom/htc/util/contacts/GroupDelta;
    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    .line 255
    .restart local v16       #delta:Lcom/htc/util/contacts/GroupDelta;
    :cond_3
    :try_start_1
    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/htc/util/contacts/GroupDelta;->mNotes:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 272
    .end local v16           #delta:Lcom/htc/util/contacts/GroupDelta;
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 276
    .end local v8           #SystemIdIdx:I
    .end local v9           #accountNameIdx:I
    .end local v10           #accountTypeIdx:I
    .end local v15           #deletedIdx:I
    .end local v21           #idIdx:I
    .end local v23           #notesIdx:I
    .end local v25           #photoIdx:I
    .end local v26           #sourceIdIdx:I
    .end local v27           #titleIdx:I
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 277
    const/16 v17, 0x0

    .line 295
    .end local v17           #groupEntity:Lcom/htc/util/contacts/GroupEntity;
    :goto_2
    return-object v17

    .line 280
    .restart local v17       #groupEntity:Lcom/htc/util/contacts/GroupEntity;
    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/util/contacts/GroupEntity;->mGroupsList:Ljava/util/ArrayList;

    .line 281
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    .line 283
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/htc/util/contacts/GroupEntity;->queryContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 284
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_9

    .line 285
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 287
    :cond_7
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 288
    .local v19, id:J
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 291
    .end local v19           #id:J
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_9
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public static fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;I)Lcom/htc/util/contacts/GroupEntity;
    .locals 31
    .parameter "resolver"
    .parameter "targetName"
    .parameter "groupIsReadOnly"

    .prologue
    .line 126
    sget-object v28, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 128
    .local v28, uri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    .line 129
    .local v7, selectionArg:[Ljava/lang/String;
    const-string v6, "title= ?  AND deleted = 0 "

    .line 131
    .local v6, selection:Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v7, v3

    .line 133
    const/16 v23, 0x0

    .line 134
    .local v23, iterator:Landroid/content/EntityIterator;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v19, groupsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupDelta;>;"
    new-instance v18, Lcom/htc/util/contacts/GroupEntity;

    invoke-direct/range {v18 .. v18}, Lcom/htc/util/contacts/GroupEntity;-><init>()V

    .line 137
    .local v18, groupEntity:Lcom/htc/util/contacts/GroupEntity;
    const-string v3, "content://com.android.contacts/groups_raw"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 140
    .local v4, queryUri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 141
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_5

    .line 142
    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 143
    .local v22, idIdx:I
    const-string v3, "account_name"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 144
    .local v10, accountNameIdx:I
    const-string v3, "account_type"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 145
    .local v11, accountTypeIdx:I
    const-string v3, "title"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 146
    .local v27, titleIdx:I
    const-string v3, "sourceid"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 147
    .local v26, sourceIdIdx:I
    const-string v3, "system_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 148
    .local v9, SystemIdIdx:I
    const-string v3, "notes"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 149
    .local v24, notesIdx:I
    const-string v3, "deleted"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 150
    .local v16, deletedIdx:I
    const-string v3, "photo"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 154
    .local v25, photoIdx:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 156
    new-instance v17, Lcom/htc/util/contacts/GroupDelta;

    invoke-direct/range {v17 .. v17}, Lcom/htc/util/contacts/GroupDelta;-><init>()V

    .line 157
    .local v17, delta:Lcom/htc/util/contacts/GroupDelta;
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountName:Ljava/lang/String;

    .line 158
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountType:Ljava/lang/String;

    .line 159
    move/from16 v0, v26

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mSourceId:Ljava/lang/String;

    .line 160
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mSystemId:Ljava/lang/String;

    .line 162
    const-string v3, "com.htc.android.myphonebook"

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 164
    .local v12, bytes:[B
    if-eqz v12, :cond_1

    array-length v3, v12

    if-lez v3, :cond_1

    .line 165
    const/4 v3, 0x0

    array-length v5, v12

    invoke-static {v12, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mTiIcon:Landroid/graphics/Bitmap;

    .line 170
    .end local v12           #bytes:[B
    :cond_1
    :goto_1
    move/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/htc/util/contacts/GroupDelta;->mId:J

    .line 171
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v17

    iput v3, v0, Lcom/htc/util/contacts/GroupDelta;->mIsDeleted:I

    .line 172
    move/from16 v0, v25

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 174
    .restart local v12       #bytes:[B
    if-eqz v12, :cond_2

    array-length v3, v12

    if-lez v3, :cond_2

    .line 175
    const/4 v3, 0x0

    array-length v5, v12

    invoke-static {v12, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mBitmap:Landroid/graphics/Bitmap;

    .line 178
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v15, Lcom/htc/util/contacts/GroupEntity$AccountData;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/util/contacts/GroupDelta;->mAccountType:Ljava/lang/String;

    invoke-direct {v15, v3, v5}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v15, data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mAccountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 185
    .end local v12           #bytes:[B
    .end local v15           #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v17           #delta:Lcom/htc/util/contacts/GroupDelta;
    :catchall_0
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3

    .line 168
    .restart local v17       #delta:Lcom/htc/util/contacts/GroupDelta;
    :cond_3
    :try_start_1
    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/util/contacts/GroupDelta;->mNotes:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 185
    .end local v17           #delta:Lcom/htc/util/contacts/GroupDelta;
    :cond_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 189
    .end local v9           #SystemIdIdx:I
    .end local v10           #accountNameIdx:I
    .end local v11           #accountTypeIdx:I
    .end local v16           #deletedIdx:I
    .end local v22           #idIdx:I
    .end local v24           #notesIdx:I
    .end local v25           #photoIdx:I
    .end local v26           #sourceIdIdx:I
    .end local v27           #titleIdx:I
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 190
    const/16 v18, 0x0

    .line 208
    .end local v18           #groupEntity:Lcom/htc/util/contacts/GroupEntity;
    :goto_2
    return-object v18

    .line 193
    .restart local v18       #groupEntity:Lcom/htc/util/contacts/GroupEntity;
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/htc/util/contacts/GroupEntity;->mGroupsList:Ljava/util/ArrayList;

    .line 194
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    .line 195
    move/from16 v0, p2

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/util/contacts/GroupEntity;->mGroupIsReadOnly:I

    .line 196
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/htc/util/contacts/GroupEntity;->queryContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 197
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_9

    .line 198
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 200
    :cond_7
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 201
    .local v20, id:J
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 204
    .end local v20           #id:J
    :cond_8
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_9
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/htc/util/contacts/GroupEntity;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method private static getInWhere(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9
    .parameter "columnName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 398
    .local v4, result:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 399
    :cond_0
    const-string v4, "0"

    .line 415
    :goto_0
    return-object v4

    .line 402
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 404
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 405
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 406
    .local v2, id:J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 407
    add-int/lit8 v6, v5, -0x1

    if-ge v1, v6, :cond_2

    .line 408
    const-string v6, " ,"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 411
    .end local v2           #id:J
    :cond_3
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    const-string v6, " ) "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getNameWhereWithArgMark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    const-string v0, " ( title= ? ) "

    return-object v0
.end method

.method public static getWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ( title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWhere(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "groupIsReadOnly"

    .prologue
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ( title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "And "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "group_is_read_only"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static insertNewGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "context"
    .parameter
    .parameter "title"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1171
    .local p1, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0, v1, p1, p2, p3}, Lcom/htc/util/contacts/GroupEntity;->insertNewGroupInner(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 1172
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 1173
    invoke-static {p0}, Lcom/htc/util/contacts/GroupEntity;->broadcastGroupModifiaction(Landroid/content/Context;)V

    .line 1175
    :cond_0
    return v0
.end method

.method private static insertNewGroupForARawContact(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 17
    .parameter "resolver"
    .parameter "rawContactId"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "title"
    .parameter "groupIsReadOnly"

    .prologue
    .line 1081
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v16, 0x1

    .line 1084
    .local v16, visible:I
    :goto_0
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1086
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, p5

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const-string v2, "notes"

    move-object/from16 v0, p5

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const-string v2, "account_name"

    move-object/from16 v0, p3

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string v2, "account_type"

    move-object/from16 v0, p4

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const-string v2, "should_sync"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1091
    const-string v2, "group_visible"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1094
    const-string v2, "group_is_read_only"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1102
    const-wide/16 v9, -0x1

    .line 1103
    .local v9, gId:J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1104
    .local v13, sbSelection:Ljava/lang/StringBuilder;
    const-string v2, "account_name"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    const-string v2, " = ? AND "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    const-string v2, "account_type"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    const-string v2, " = ? AND "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    const-string v2, "title"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    const-string v2, " = ? AND "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    const-string v2, "notes"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    const-string v2, " = ? "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v6, v2

    const/4 v2, 0x1

    aput-object p4, v6, v2

    const/4 v2, 0x2

    aput-object p5, v6, v2

    const/4 v2, 0x3

    aput-object p5, v6, v2

    .line 1114
    .local v6, selectionArgs:[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1115
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1116
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1117
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1119
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1121
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v9

    if-lez v2, :cond_2

    .line 1122
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1123
    .local v11, groupUri:Landroid/net/Uri;
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 1127
    .end local v11           #groupUri:Landroid/net/Uri;
    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 1128
    .local v12, rawContactUri:Landroid/net/Uri;
    const-string v2, "data"

    invoke-static {v12, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1130
    .local v14, uri:Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 1131
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const-string v2, "data1"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1134
    if-eqz p4, :cond_3

    const-string v2, "com.google"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1135
    const-string v2, "data5"

    const-string v3, "1"

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1139
    const/4 v2, 0x1

    return v2

    .line 1081
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #gId:J
    .end local v12           #rawContactUri:Landroid/net/Uri;
    .end local v13           #sbSelection:Ljava/lang/StringBuilder;
    .end local v14           #uri:Landroid/net/Uri;
    .end local v15           #values:Landroid/content/ContentValues;
    .end local v16           #visible:I
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method public static insertNewGroupForARawContact(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .parameter "context"
    .parameter "rawContactId"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "title"
    .parameter "groupIsReadOnly"

    .prologue
    .line 1069
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/htc/util/contacts/GroupEntity;->insertNewGroupForARawContact(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    .line 1070
    .local v7, result:Z
    if-eqz v7, :cond_0

    .line 1071
    invoke-static {p0, p5, p6}, Lcom/htc/util/contacts/GroupEntity;->broadcastGroupModifiaction(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1073
    :cond_0
    return v7
.end method

.method private static insertNewGroupInner(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 43
    .parameter "context"
    .parameter "resolver"
    .parameter
    .parameter "title"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1189
    .local p2, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v34, 0x0

    .line 1190
    .local v34, result:Z
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v32, outRawContactId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 1195
    .local v31, outAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    const/16 v26, 0x0

    .line 1196
    .local v26, jpegData:[B
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1197
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v37, v6, 0x4

    .line 1198
    .local v37, size:I
    new-instance v30, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1199
    .local v30, out:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v7, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY:I

    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1201
    :try_start_0
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1202
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v26

    .line 1203
    invoke-virtual/range {v30 .. v30}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 1204
    const/16 v30, 0x0

    .line 1208
    .end local v30           #out:Ljava/io/ByteArrayOutputStream;
    .end local v37           #size:I
    :cond_0
    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 1209
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v32

    move-object/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/util/contacts/GroupEntity;->processMember(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1216
    :goto_1
    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    .line 1218
    .local v42, visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1219
    .local v29, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v28, 0x0

    .line 1222
    .local v28, operation:Landroid/content/ContentProviderOperation;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1223
    .local v20, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$GroupData;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/util/contacts/GroupEntity$AccountData;

    .line 1224
    .local v11, account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    iget-object v7, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->dataSet:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/htc/util/contacts/GroupEntity;->isGroupMemeberReadOnlyAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1227
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 1228
    .local v40, values:Landroid/content/ContentValues;
    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1229
    const-string v6, "account_name"

    iget-object v7, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const-string v6, "account_type"

    iget-object v7, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :cond_2
    const-string v6, "title"

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string v6, "notes"

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const/16 v41, 0x1

    .line 1237
    .local v41, visible:I
    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 1238
    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    .line 1239
    .local v39, value:Ljava/lang/Integer;
    if-nez v39, :cond_7

    .line 1240
    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/htc/util/contacts/ContactsUtility;->isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v41, 0x1

    .line 1241
    :goto_3
    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v42

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    .end local v39           #value:Ljava/lang/Integer;
    :cond_3
    :goto_4
    const-string v6, "should_sync"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1249
    const-string v6, "group_visible"

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1251
    if-eqz v26, :cond_4

    .line 1252
    const-string v6, "photo"

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1256
    :cond_4
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 1257
    .local v14, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1258
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v28

    .line 1259
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    new-instance v5, Lcom/htc/util/contacts/GroupEntity$GroupData;

    iget-object v6, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountName:Ljava/lang/String;

    iget-object v7, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    iget-object v8, v11, Lcom/htc/util/contacts/GroupEntity$AccountData;->dataSet:Ljava/lang/String;

    const-wide/16 v9, -0x1

    invoke-direct/range {v5 .. v10}, Lcom/htc/util/contacts/GroupEntity$GroupData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1264
    .local v5, data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1212
    .end local v5           #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v11           #account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v20           #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$GroupData;>;"
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v28           #operation:Landroid/content/ContentProviderOperation;
    .end local v29           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v40           #values:Landroid/content/ContentValues;
    .end local v41           #visible:I
    .end local v42           #visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    new-instance v16, Lcom/htc/util/contacts/GroupEntity$AccountData;

    const-string v6, "pcsc"

    const-string v7, "com.htc.android.pcsc"

    move-object/from16 v0, v16

    invoke-direct {v0, v6, v7}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    .local v16, gData:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1240
    .end local v16           #gData:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .restart local v11       #account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .restart local v20       #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$GroupData;>;"
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v28       #operation:Landroid/content/ContentProviderOperation;
    .restart local v29       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v39       #value:Ljava/lang/Integer;
    .restart local v40       #values:Landroid/content/ContentValues;
    .restart local v41       #visible:I
    .restart local v42       #visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6
    const/16 v41, 0x0

    goto :goto_3

    .line 1244
    :cond_7
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v41

    goto :goto_4

    .line 1268
    .end local v11           #account:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v39           #value:Ljava/lang/Integer;
    .end local v40           #values:Landroid/content/ContentValues;
    .end local v41           #visible:I
    :cond_8
    :try_start_1
    const-string v6, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v36

    .line 1269
    .local v36, results:[Landroid/content/ContentProviderResult;
    if-nez v36, :cond_9

    .line 1270
    const/4 v6, 0x0

    .line 1361
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v36           #results:[Landroid/content/ContentProviderResult;
    :goto_5
    return v6

    .line 1272
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v36       #results:[Landroid/content/ContentProviderResult;
    :cond_9
    const/16 v23, 0x0

    .line 1273
    .local v23, index:I
    move-object/from16 v13, v36

    .local v13, arr$:[Landroid/content/ContentProviderResult;
    array-length v0, v13

    move/from16 v27, v0

    .local v27, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_6
    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    aget-object v35, v13, v21

    .line 1274
    .local v35, resultData:Landroid/content/ContentProviderResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v38, v0

    .line 1275
    .local v38, uri:Landroid/net/Uri;
    invoke-static/range {v38 .. v38}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 1276
    .local v18, gid:J
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/util/contacts/GroupEntity$GroupData;

    .line 1277
    .restart local v5       #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    if-eqz v5, :cond_a

    .line 1278
    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/htc/util/contacts/GroupEntity$GroupData;->_Id:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1280
    :cond_a
    add-int/lit8 v23, v23, 0x1

    .line 1273
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 1282
    .end local v5           #data:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v18           #gid:J
    .end local v35           #resultData:Landroid/content/ContentProviderResult;
    .end local v38           #uri:Landroid/net/Uri;
    :cond_b
    const/16 v34, 0x1

    .line 1302
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    .line 1305
    const/4 v12, 0x0

    .line 1307
    .local v12, applyCount:I
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .end local v21           #i$:I
    :cond_c
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/util/contacts/GroupEntity$GroupData;

    .line 1308
    .local v17, gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/htc/util/contacts/GroupEntity$RawContactData;

    .line 1309
    .local v33, rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/htc/util/contacts/GroupEntity$GroupData;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1310
    new-instance v40, Landroid/content/ContentValues;

    invoke-direct/range {v40 .. v40}, Landroid/content/ContentValues;-><init>()V

    .line 1311
    .restart local v40       #values:Landroid/content/ContentValues;
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const-string v6, "raw_contact_id"

    move-object/from16 v0, v33

    iget-wide v7, v0, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1313
    const-string v6, "data1"

    move-object/from16 v0, v17

    iget-wide v7, v0, Lcom/htc/util/contacts/GroupEntity$GroupData;->_Id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1315
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/htc/util/contacts/GroupEntity$AccountData;->accountType:Ljava/lang/String;

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1316
    const-string v6, "data5"

    const-string v7, "1"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    :cond_e
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    iget-wide v7, v0, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .line 1320
    .local v24, insertGroupMemberUri:Landroid/net/Uri;
    const-string v6, "data"

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 1323
    .local v25, insertUri:Landroid/net/Uri;
    const/16 v34, 0x1

    .line 1327
    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 1328
    .restart local v14       #builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1329
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v28

    .line 1330
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    add-int/lit8 v12, v12, 0x1

    .line 1332
    const/16 v6, 0x190

    if-lt v12, v6, :cond_d

    .line 1334
    :try_start_2
    const-string v6, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1336
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1337
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 1283
    .end local v12           #applyCount:I
    .end local v13           #arr$:[Landroid/content/ContentProviderResult;
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v17           #gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v23           #index:I
    .end local v24           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v25           #insertUri:Landroid/net/Uri;
    .end local v27           #len$:I
    .end local v33           #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .end local v36           #results:[Landroid/content/ContentProviderResult;
    .end local v40           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v15

    .line 1285
    .local v15, e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1286
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1287
    .end local v15           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v15

    .line 1289
    .local v15, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v15}, Landroid/content/OperationApplicationException;->printStackTrace()V

    .line 1290
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1338
    .end local v15           #e:Landroid/content/OperationApplicationException;
    .restart local v12       #applyCount:I
    .restart local v13       #arr$:[Landroid/content/ContentProviderResult;
    .restart local v14       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v17       #gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v23       #index:I
    .restart local v24       #insertGroupMemberUri:Landroid/net/Uri;
    .restart local v25       #insertUri:Landroid/net/Uri;
    .restart local v27       #len$:I
    .restart local v33       #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .restart local v36       #results:[Landroid/content/ContentProviderResult;
    .restart local v40       #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v15

    .line 1339
    .local v15, e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_7

    .line 1348
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v15           #e:Landroid/os/RemoteException;
    .end local v17           #gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v24           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v25           #insertUri:Landroid/net/Uri;
    .end local v33           #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .end local v40           #values:Landroid/content/ContentValues;
    :cond_f
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_10

    .line 1350
    :try_start_3
    const-string v6, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1352
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1353
    const/4 v12, 0x0

    .line 1359
    :cond_10
    :goto_8
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    move/from16 v6, v34

    .line 1361
    goto/16 :goto_5

    .line 1354
    :catch_3
    move-exception v15

    .line 1355
    .restart local v15       #e:Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    .line 1356
    .end local v15           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v6

    goto :goto_8

    .line 1340
    .restart local v14       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v17       #gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v24       #insertGroupMemberUri:Landroid/net/Uri;
    .restart local v25       #insertUri:Landroid/net/Uri;
    .restart local v33       #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .restart local v40       #values:Landroid/content/ContentValues;
    :catch_5
    move-exception v6

    goto/16 :goto_7

    .line 1205
    .end local v12           #applyCount:I
    .end local v13           #arr$:[Landroid/content/ContentProviderResult;
    .end local v14           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v17           #gdata:Lcom/htc/util/contacts/GroupEntity$GroupData;
    .end local v20           #groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$GroupData;>;"
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v23           #index:I
    .end local v24           #insertGroupMemberUri:Landroid/net/Uri;
    .end local v25           #insertUri:Landroid/net/Uri;
    .end local v27           #len$:I
    .end local v28           #operation:Landroid/content/ContentProviderOperation;
    .end local v29           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v33           #rdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    .end local v36           #results:[Landroid/content/ContentProviderResult;
    .end local v40           #values:Landroid/content/ContentValues;
    .end local v42           #visibleMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v30       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v37       #size:I
    :catch_6
    move-exception v6

    goto/16 :goto_0
.end method

.method private static isGroupMemeberReadOnlyAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    const/4 v0, 0x1

    .line 1049
    if-nez p1, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return v0

    .line 1053
    :cond_1
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.htctwitter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.socialnetwork.plurk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.twitter.android.auth.login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.facebook.auth.login"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1063
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static processMember(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 22
    .parameter "context"
    .parameter "resolver"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupEntity$RawContactData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupEntity$AccountData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p2, inContactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p3, outRawContactId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    .local p4, outAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    const-string v5, "contact_id IN (  "

    .line 312
    .local v5, selection:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 314
    .local v12, buffer:Ljava/lang/StringBuffer;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 315
    .local v21, size:I
    if-eqz p2, :cond_0

    if-nez v21, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 320
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 321
    .local v13, cid:J
    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 323
    add-int/lit8 v2, v21, -0x1

    move/from16 v0, v17

    if-ge v0, v2, :cond_2

    .line 324
    const-string v2, ", "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 327
    .end local v13           #cid:J
    :cond_3
    const-string v2, " )  "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 330
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/util/contacts/GroupEntity;->sRawContactProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 331
    .local v15, cursor:Landroid/database/Cursor;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v19, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$AccountData;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v20, rawContactlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    if-eqz v15, :cond_7

    .line 335
    :cond_4
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 336
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 337
    .local v10, rawId:J
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 338
    .local v7, account_name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 340
    .local v8, account_type:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 342
    .local v9, dataSet:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 344
    .local v18, idDelete:I
    if-gtz v18, :cond_4

    .line 348
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/htc/util/contacts/GroupEntity;->isGroupMemeberReadOnlyAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 352
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 353
    new-instance v6, Lcom/htc/util/contacts/GroupEntity$RawContactData;

    invoke-direct/range {v6 .. v11}, Lcom/htc/util/contacts/GroupEntity$RawContactData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 354
    .local v6, rawdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .end local v6           #rawdata:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    :cond_5
    new-instance v16, Lcom/htc/util/contacts/GroupEntity$AccountData;

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v8}, Lcom/htc/util/contacts/GroupEntity$AccountData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .local v16, data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 358
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 361
    .end local v7           #account_name:Ljava/lang/String;
    .end local v8           #account_type:Ljava/lang/String;
    .end local v9           #dataSet:Ljava/lang/String;
    .end local v10           #rawId:J
    .end local v16           #data:Lcom/htc/util/contacts/GroupEntity$AccountData;
    .end local v18           #idDelete:I
    :cond_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 364
    :cond_7
    if-eqz p3, :cond_8

    .line 365
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 367
    :cond_8
    if-eqz p4, :cond_0

    .line 368
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method private static queryContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "resolver"
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 299
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_URI:Landroid/net/Uri;

    .line 300
    .local v1, attachuri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 301
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v6, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 302
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 303
    sget-object v2, Lcom/htc/util/contacts/GroupEntity;->sContactProjection:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 304
    .local v7, c:Landroid/database/Cursor;
    return-object v7
.end method

.method private removeGroupMember(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/GroupEntity$RawContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 917
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/GroupEntity$RawContactData;>;"
    const-string v7, "content://com.android.contacts/groups_member/name"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 918
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 919
    .local v3, pattern:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 921
    .local v0, buffer:Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(title="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 923
    const-string v4, "raw_contact_id IN ( "

    .line 925
    .local v4, selection:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 926
    .local v5, size:I
    if-gtz v5, :cond_0

    .line 941
    :goto_0
    return-void

    .line 930
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 931
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/contacts/GroupEntity$RawContactData;

    .line 932
    .local v1, data:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/htc/util/contacts/GroupEntity$RawContactData;->_Id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 933
    add-int/lit8 v7, v5, -0x1

    if-ge v2, v7, :cond_1

    .line 934
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 930
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 937
    .end local v1           #data:Lcom/htc/util/contacts/GroupEntity$RawContactData;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 938
    const-string v7, "  AND "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 939
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 940
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V
    .locals 20
    .parameter "context"
    .parameter
    .parameter
    .parameter "newPhoto"
    .parameter "bChangePhoto"
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
            ">;",
            "Landroid/graphics/Bitmap;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, toBeAddedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toBeRemovedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v3, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 422
    .local v8, id:Ljava/lang/Long;
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    .end local v8           #id:Ljava/lang/Long;
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v12, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 427
    .restart local v8       #id:Ljava/lang/Long;
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 435
    .end local v8           #id:Ljava/lang/Long;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 450
    .local v13, resolver:Landroid/content/ContentResolver;
    sget-object v15, Lcom/htc/provider/HtcContactsContract$Contacts;->UPDATE_FAVORITE_URI:Landroid/net/Uri;

    .line 453
    .local v15, updateUri:Landroid/net/Uri;
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/htc/util/contacts/GroupEntity;->getInWhere(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v17

    .line 454
    .local v17, where:Ljava/lang/String;
    new-instance v16, Landroid/content/ContentValues;

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 455
    .local v16, values:Landroid/content/ContentValues;
    const-string v18, "starred"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v13, v15, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 458
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    .line 459
    const-string v18, "starred"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/htc/util/contacts/GroupEntity;->getInWhere(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v17

    .line 461
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v13, v15, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 464
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    .line 465
    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_3

    .line 466
    sget-object v15, Lcom/htc/provider/HtcContactsContract$Groups$Favorite;->UPDATE_FAVORITE_GROUP_PHOTO_URI:Landroid/net/Uri;

    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    mul-int v18, v18, v19

    mul-int/lit8 v14, v18, 0x4

    .line 468
    .local v14, size:I
    if-lez v14, :cond_4

    .line 469
    const/4 v10, 0x0

    .line 470
    .local v10, jpegData:[B
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 471
    .local v11, out:Ljava/io/ByteArrayOutputStream;
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v19, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY:I

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 473
    :try_start_0
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 474
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 475
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 476
    if-eqz v10, :cond_2

    .line 477
    const-string v18, "photo"

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :cond_2
    :goto_2
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v13, v15, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 490
    .end local v10           #jpegData:[B
    .end local v11           #out:Ljava/io/ByteArrayOutputStream;
    .end local v14           #size:I
    :cond_3
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_6

    .line 491
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v5, deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 493
    .local v4, data:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v6, v0

    .line 494
    .local v6, deletedPerson:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 484
    .end local v4           #data:Ljava/lang/Long;
    .end local v5           #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6           #deletedPerson:I
    .restart local v14       #size:I
    :cond_4
    sget-object v15, Lcom/htc/provider/HtcContactsContract$Groups$Favorite;->UPDATE_FAVORITE_GROUP_PHOTO_URI:Landroid/net/Uri;

    .line 485
    const-string v19, "photo"

    const/16 v18, 0x0

    check-cast v18, [B

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 486
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v13, v15, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 496
    .end local v14           #size:I
    .restart local v5       #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    const-string v18, "Favorite_8656150684447252476_6727701920173350445"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Lcom/htc/util/contacts/GroupEntity;->broadcastFavoriteChangeDeletion(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 502
    .end local v5           #deleteContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_5
    return-void

    .line 499
    :cond_6
    new-instance v9, Landroid/content/Intent;

    const-string v18, "anddroid.intent.action.FAVORITE_CHANGE"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v9, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 479
    .end local v9           #intent:Landroid/content/Intent;
    .restart local v10       #jpegData:[B
    .restart local v11       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #size:I
    :catch_0
    move-exception v18

    goto :goto_2
.end method

.method private updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 4
    .parameter "resolver"
    .parameter "newTitle"

    .prologue
    .line 696
    const-string v3, "content://com.android.contacts/group_with_favorite"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 697
    .local v1, updateGroupUri:Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/htc/util/contacts/GroupEntity;->buildDiff(Landroid/content/ContentResolver;)V

    .line 698
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 699
    .local v2, values:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/contacts/GroupEntity;->getWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, selection:Ljava/lang/String;
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 701
    const-string v3, "title"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 704
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 706
    :cond_1
    return-void
.end method

.method private updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "resolver"
    .parameter "newTitle"
    .parameter "bitmap"

    .prologue
    const/4 v7, 0x0

    .line 709
    const-string v6, "content://com.android.contacts/group_with_favorite"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 711
    .local v4, updateGroupUri:Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/htc/util/contacts/GroupEntity;->buildDiff(Landroid/content/ContentResolver;)V

    .line 712
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 713
    .local v5, values:Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-static {v6}, Lcom/htc/util/contacts/GroupEntity;->getWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, selection:Ljava/lang/String;
    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/htc/util/contacts/GroupEntity;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 715
    const-string v6, "title"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_0
    const/4 v0, 0x0

    .line 719
    .local v0, jpegData:[B
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 720
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int/2addr v6, v8

    mul-int/lit8 v3, v6, 0x4

    .line 721
    .local v3, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 722
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v8, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY:I

    invoke-virtual {p3, v6, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 724
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 725
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 726
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 727
    if-eqz v0, :cond_1

    .line 728
    const-string v6, "photo"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #size:I
    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 737
    invoke-virtual {p1, v4, v5, v2, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 739
    :cond_2
    return-void

    .line 734
    :cond_3
    const-string v8, "photo"

    move-object v6, v7

    check-cast v6, [B

    invoke-virtual {v5, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 730
    .restart local v1       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #size:I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "resolver"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 680
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p3}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 681
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-nez v0, :cond_0

    .line 693
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v1, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 689
    iget-object v1, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 691
    invoke-direct {v0, p0, p4}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "resolver"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
    .parameter "photo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 652
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p3}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 653
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-nez v0, :cond_0

    .line 667
    :goto_0
    return-void

    .line 660
    :cond_0
    iget-object v1, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 661
    iget-object v1, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 662
    if-eqz p5, :cond_1

    .line 663
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/htc/util/contacts/GroupEntity;->mPhotoRef:Ljava/lang/ref/SoftReference;

    .line 665
    :cond_1
    invoke-direct {v0, p0, p4, p5}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
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
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p3, :cond_1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 618
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, p2, v2, v3}, Lcom/htc/util/contacts/GroupEntity;->updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 623
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {v1, p3}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 624
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-eqz v0, :cond_0

    .line 627
    iput-object p0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    .line 632
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 633
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 635
    invoke-direct {v0, v1, p4}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
    .parameter "groupIsReadOnly"
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
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p3, :cond_1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, p2, v2, v3}, Lcom/htc/util/contacts/GroupEntity;->updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 558
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {v1, p3, p5}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;I)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 559
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-eqz v0, :cond_0

    .line 562
    iput-object p0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    .line 567
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 568
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 570
    invoke-direct {v0, v1, p4}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
    .parameter "photo"
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
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 583
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 586
    .local v1, resolver:Landroid/content/ContentResolver;
    if-eqz p3, :cond_1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 587
    const/4 v2, 0x1

    invoke-static {p0, p1, p2, p5, v2}, Lcom/htc/util/contacts/GroupEntity;->updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    invoke-static {v1, p3}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 592
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-eqz v0, :cond_0

    .line 595
    iput-object p0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    .line 600
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 601
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 602
    if-eqz p5, :cond_2

    .line 603
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mPhotoRef:Ljava/lang/ref/SoftReference;

    .line 605
    :cond_2
    invoke-direct {v0, v1, p4, p5}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter
    .parameter "targetName"
    .parameter "newName"
    .parameter "photo"
    .parameter "groupIsReadOnly"
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
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, toAddList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, toRemoveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 518
    .local v1, resolver:Landroid/content/ContentResolver;
    if-eqz p3, :cond_1

    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    const/4 v2, 0x1

    invoke-static {p0, p1, p2, p5, v2}, Lcom/htc/util/contacts/GroupEntity;->updateFavorite(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Z)V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    invoke-static {v1, p3, p6}, Lcom/htc/util/contacts/GroupEntity;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;I)Lcom/htc/util/contacts/GroupEntity;

    move-result-object v0

    .line 524
    .local v0, entity:Lcom/htc/util/contacts/GroupEntity;
    if-eqz v0, :cond_0

    .line 527
    iput-object p0, v0, Lcom/htc/util/contacts/GroupEntity;->mContext:Landroid/content/Context;

    .line 532
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 533
    iget-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 534
    if-eqz p5, :cond_2

    .line 535
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/htc/util/contacts/GroupEntity;->mPhotoRef:Ljava/lang/ref/SoftReference;

    .line 537
    :cond_2
    invoke-direct {v0, v1, p4, p5}, Lcom/htc/util/contacts/GroupEntity;->updateGroup(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public addContactMember(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    return-void
.end method

.method public removeContactMember(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/util/contacts/GroupEntity;->mAfterContactList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method
