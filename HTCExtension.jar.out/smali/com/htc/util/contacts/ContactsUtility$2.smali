.class final Lcom/htc/util/contacts/ContactsUtility$2;
.super Ljava/lang/Object;
.source "ContactsUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/ContactsUtility;->importCsAccountInfoToMyContact(Landroid/content/Context;Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/accounts/Account;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/htc/util/contacts/ContactsUtility$2;->val$account:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$account:Landroid/accounts/Account;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1340
    .local v11, email:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/htc/cscore/util/CSUtil;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1341
    .local v8, csPhoneNumber:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1342
    :cond_1
    const/16 v16, 0x0

    .line 1345
    .local v16, insertSuccess:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v7

    .line 1346
    .local v7, bMyContactIds:Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 1347
    const-string v32, "contact_id"

    const-wide/16 v33, 0x0

    move-object/from16 v0, v32

    move-wide/from16 v1, v33

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 1348
    .local v20, lMyContactId:J
    const-string v32, "_id"

    const-wide/16 v33, 0x0

    move-object/from16 v0, v32

    move-wide/from16 v1, v33

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    .line 1349
    .local v22, lMyRawContactId:J
    const-wide/16 v32, 0x0

    cmp-long v32, v32, v20

    if-gez v32, :cond_0

    const-wide/16 v32, 0x0

    cmp-long v32, v32, v22

    if-gez v32, :cond_0

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v20

    #calls: Lcom/htc/util/contacts/ContactsUtility;->queryProfileEntities(Landroid/content/Context;J)Ljava/util/ArrayList;
    invoke-static {v0, v1, v2}, Lcom/htc/util/contacts/ContactsUtility;->access$000(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v13

    .line 1370
    .local v13, entitiesMy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    const/4 v14, 0x0

    .line 1371
    .local v14, entityMy:Landroid/content/Entity;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Entity;

    .line 1372
    .local v10, e:Landroid/content/Entity;
    if-eqz v10, :cond_2

    .line 1373
    invoke-virtual {v10}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v28

    .line 1374
    .local v28, myValues:Landroid/content/ContentValues;
    const-string v32, "account_type"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1375
    .local v5, accountType:Ljava/lang/String;
    const-string v32, "account_name"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1376
    .local v4, accountName:Ljava/lang/String;
    const-string v32, "data_set"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1377
    .local v9, dataSet:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_2

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 1378
    move-object v14, v10

    .line 1385
    .end local v4           #accountName:Ljava/lang/String;
    .end local v5           #accountType:Ljava/lang/String;
    .end local v9           #dataSet:Ljava/lang/String;
    .end local v10           #e:Landroid/content/Entity;
    .end local v28           #myValues:Landroid/content/ContentValues;
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_6

    .line 1386
    const-string v32, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v32

    invoke-static {v14, v0}, Lcom/htc/util/contacts/ContactsUtility;->getContentValues(Landroid/content/Entity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    .line 1387
    .local v26, myEmailContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v6, 0x0

    .line 1388
    .local v6, bDuplicate:Z
    const-wide/16 v24, 0x0

    .line 1389
    .local v24, lSocialnetworkType:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$account:Landroid/accounts/Account;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/htc/util/contacts/ContactsUtility;->getSocialnetworkAccountType(Ljava/lang/String;)J

    move-result-wide v17

    .line 1390
    .local v17, insertedAccountType:J
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/ContentValues;

    .line 1392
    .local v31, v:Landroid/content/ContentValues;
    const-string v32, "data1"

    invoke-virtual/range {v31 .. v32}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 1393
    const-wide/high16 v32, 0x400c

    invoke-static/range {v32 .. v33}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 1394
    const/4 v6, 0x1

    .line 1413
    .end local v31           #v:Landroid/content/ContentValues;
    :cond_5
    :goto_1
    if-nez v6, :cond_6

    .line 1414
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1415
    .local v12, emailValues:Landroid/content/ContentValues;
    const-string v32, "raw_contact_id"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1416
    const-string v32, "data1"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const-string v32, "mimetype"

    const-string v33, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-wide/high16 v32, 0x400c

    invoke-static/range {v32 .. v33}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 1424
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    sget-object v33, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v30

    .line 1425
    .local v30, uriResult:Landroid/net/Uri;
    if-eqz v30, :cond_6

    .line 1426
    const/16 v16, 0x1

    .line 1432
    .end local v6           #bDuplicate:Z
    .end local v12           #emailValues:Landroid/content/ContentValues;
    .end local v17           #insertedAccountType:J
    .end local v24           #lSocialnetworkType:J
    .end local v26           #myEmailContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v30           #uriResult:Landroid/net/Uri;
    :cond_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_9

    .line 1433
    const-string v32, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v32

    invoke-static {v14, v0}, Lcom/htc/util/contacts/ContactsUtility;->getContentValues(Landroid/content/Entity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v27

    .line 1434
    .local v27, myPhoneContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v6, 0x0

    .line 1435
    .restart local v6       #bDuplicate:Z
    const-wide/16 v24, 0x0

    .line 1436
    .restart local v24       #lSocialnetworkType:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$account:Landroid/accounts/Account;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/htc/util/contacts/ContactsUtility;->getSocialnetworkAccountType(Ljava/lang/String;)J

    move-result-wide v17

    .line 1437
    .restart local v17       #insertedAccountType:J
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/ContentValues;

    .line 1439
    .restart local v31       #v:Landroid/content/ContentValues;
    const-string v32, "data1"

    invoke-virtual/range {v31 .. v32}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 1440
    const-wide/high16 v32, 0x400c

    invoke-static/range {v32 .. v33}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 1441
    const/4 v6, 0x1

    .line 1460
    .end local v31           #v:Landroid/content/ContentValues;
    :cond_8
    :goto_3
    if-nez v6, :cond_9

    .line 1461
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 1462
    .local v29, phoneValues:Landroid/content/ContentValues;
    const-string v32, "raw_contact_id"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1463
    const-string v32, "data1"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    const-string v32, "mimetype"

    const-string v33, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    const-string v32, "data2"

    const/16 v33, 0x2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    sget-object v33, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v30

    .line 1467
    .restart local v30       #uriResult:Landroid/net/Uri;
    if-eqz v30, :cond_9

    .line 1468
    const/16 v16, 0x1

    .line 1473
    .end local v6           #bDuplicate:Z
    .end local v17           #insertedAccountType:J
    .end local v24           #lSocialnetworkType:J
    .end local v27           #myPhoneContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v29           #phoneValues:Landroid/content/ContentValues;
    .end local v30           #uriResult:Landroid/net/Uri;
    :cond_9
    if-eqz v16, :cond_0

    .line 1474
    new-instance v19, Landroid/content/Intent;

    const-string v32, "com.htc.intent.action.MY_CONTACT_CHANGE"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1475
    .local v19, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1397
    .end local v19           #intent:Landroid/content/Intent;
    .restart local v6       #bDuplicate:Z
    .restart local v17       #insertedAccountType:J
    .restart local v24       #lSocialnetworkType:J
    .restart local v26       #myEmailContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v31       #v:Landroid/content/ContentValues;
    :cond_a
    const-string v32, "data7"

    invoke-virtual/range {v31 .. v32}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 1398
    .local v3, LSocialnetworkType:Ljava/lang/Long;
    if-eqz v3, :cond_b

    .line 1399
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 1403
    :goto_4
    const-wide/16 v32, 0x0

    cmp-long v32, v32, v24

    if-nez v32, :cond_4

    .line 1404
    const-wide/16 v32, 0x0

    cmp-long v32, v32, v17

    if-nez v32, :cond_4

    .line 1405
    const/4 v6, 0x1

    .line 1406
    goto/16 :goto_1

    .line 1401
    :cond_b
    const-wide/16 v24, 0x0

    goto :goto_4

    .line 1422
    .end local v3           #LSocialnetworkType:Ljava/lang/Long;
    .end local v31           #v:Landroid/content/ContentValues;
    .restart local v12       #emailValues:Landroid/content/ContentValues;
    :cond_c
    const-string v32, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$account:Landroid/accounts/Account;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/htc/util/contacts/ContactsUtility;->getSocialnetworkAccountType(Ljava/lang/String;)J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 1444
    .end local v12           #emailValues:Landroid/content/ContentValues;
    .end local v26           #myEmailContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v27       #myPhoneContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v31       #v:Landroid/content/ContentValues;
    :cond_d
    const-string v32, "data8"

    invoke-virtual/range {v31 .. v32}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 1445
    .restart local v3       #LSocialnetworkType:Ljava/lang/Long;
    if-eqz v3, :cond_e

    .line 1446
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 1450
    :goto_5
    const-wide/16 v32, 0x0

    cmp-long v32, v32, v24

    if-nez v32, :cond_7

    .line 1451
    const-wide/16 v32, 0x0

    cmp-long v32, v32, v17

    if-nez v32, :cond_7

    .line 1452
    const/4 v6, 0x1

    .line 1453
    goto/16 :goto_3

    .line 1448
    :cond_e
    const-wide/16 v24, 0x0

    goto :goto_5
.end method
