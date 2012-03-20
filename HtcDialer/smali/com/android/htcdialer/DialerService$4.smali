.class Lcom/android/htcdialer/DialerService$4;
.super Lcom/htc/service/dialer/IDialerService$Stub;
.source "DialerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/DialerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/DialerService;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/DialerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/android/htcdialer/DialerService$4;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-direct {p0}, Lcom/htc/service/dialer/IDialerService$Stub;-><init>()V

    return-void
.end method

.method private enforceReadPermission()V
    .locals 3

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$4;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-virtual {v0}, Lcom/android/htcdialer/DialerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    return-void
.end method

.method private notifyUpdateContact(JI)V
    .locals 5
    .parameter "contactId"
    .parameter "updateType"

    .prologue
    .line 1233
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    :try_start_1
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1237
    :try_start_2
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$3400()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1241
    :goto_0
    return-void

    .line 1236
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DialerService"

    const-string v2, "notifyUpdateContact"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public accessCache(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "type"
    .parameter "key"

    .prologue
    .line 1212
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallManagerInfo(Ljava/lang/String;)I
    .locals 12
    .parameter "number"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1332
    iget-object v5, p0, Lcom/android/htcdialer/DialerService$4;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1333
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    if-eqz v6, :cond_5

    .line 1334
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v6

    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 1335
    .local v1, contactIds:[J
    if-eqz v1, :cond_5

    .line 1336
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_5

    .line 1337
    aget-wide v6, v1, v2

    cmp-long v6, v6, v10

    if-nez v6, :cond_1

    .line 1338
    monitor-exit v5

    .line 1357
    .end local v1           #contactIds:[J
    .end local v2           #i:I
    :cond_0
    :goto_1
    return v3

    .line 1339
    .restart local v1       #contactIds:[J
    .restart local v2       #i:I
    :cond_1
    aget-wide v6, v1, v2

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1340
    monitor-exit v5

    move v3, v4

    goto :goto_1

    .line 1341
    :cond_2
    aget-wide v6, v1, v2

    cmp-long v6, v6, v10

    if-lez v6, :cond_4

    .line 1342
    sget-object v6, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    aget-wide v7, v1, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableContact;

    .line 1343
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_4

    .line 1344
    iget v6, v0, Lcom/android/htcdialer/search/SearchableContact;->mSendToVoicemail:I

    if-lez v6, :cond_3

    .line 1345
    monitor-exit v5

    move v3, v4

    goto :goto_1

    .line 1347
    :cond_3
    iget v6, v0, Lcom/android/htcdialer/search/SearchableContact;->mVip:I

    if-lez v6, :cond_4

    .line 1348
    const/4 v3, 0x2

    monitor-exit v5

    goto :goto_1

    .line 1355
    .end local v0           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v1           #contactIds:[J
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1336
    .restart local v1       #contactIds:[J
    .restart local v2       #i:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1355
    .end local v1           #contactIds:[J
    .end local v2           #i:I
    :cond_5
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getContactData(Ljava/lang/String;)Lcom/htc/service/dialer/ContactData;
    .locals 14
    .parameter "key"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 1372
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$4;->enforceReadPermission()V

    .line 1378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1379
    iget-object v1, p0, Lcom/android/htcdialer/DialerService$4;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 1381
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_3

    .line 1382
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1383
    .local v9, contactId:J
    cmp-long v1, v9, v3

    if-lez v1, :cond_a

    .line 1384
    sget-object v1, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    move-object v8, v1

    .line 1386
    .local v8, contact:Lcom/android/htcdialer/search/SearchableContact;
    :goto_0
    if-eqz v8, :cond_a

    .line 1387
    new-instance v0, Lcom/htc/service/dialer/ContactData;

    iget-wide v1, v8, Lcom/android/htcdialer/search/SearchableContact;->id:J

    iget-object v3, v8, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/htcdialer/search/SearchableContact;->ringTonePath:Ljava/lang/String;

    iget v5, v8, Lcom/android/htcdialer/search/SearchableContact;->mSendToVoicemail:I

    iget v6, v8, Lcom/android/htcdialer/search/SearchableContact;->mVip:I

    invoke-direct/range {v0 .. v6}, Lcom/htc/service/dialer/ContactData;-><init>(JLjava/lang/String;Ljava/lang/String;II)V

    .line 1390
    .local v0, contactData:Lcom/htc/service/dialer/ContactData;
    iget v1, v8, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    if-lez v1, :cond_0

    .line 1391
    iget v1, v8, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/service/dialer/ContactData;->mEmail:[Ljava/lang/String;

    .line 1392
    iget-object v1, v8, Lcom/android/htcdialer/search/SearchableContact;->emails:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/htc/service/dialer/ContactData;->mEmail:[Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, v8, Lcom/android/htcdialer/search/SearchableContact;->emailCount:I

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1395
    :cond_0
    iget v1, v8, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v1, :cond_2

    .line 1396
    iget v1, v8, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/service/dialer/ContactData;->mPhoneNumber:[Ljava/lang/String;

    .line 1397
    iget v1, v8, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    .line 1398
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    iget v1, v8, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v12, v1, :cond_2

    .line 1399
    iget-object v1, v0, Lcom/htc/service/dialer/ContactData;->mPhoneNumber:[Ljava/lang/String;

    iget-object v2, v8, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v2, v2, v12

    iget-object v2, v2, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    aput-object v2, v1, v12

    .line 1400
    iget-object v1, v0, Lcom/htc/service/dialer/ContactData;->mPhoneType:[I

    iget-object v2, v8, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v2, v2, v12

    iget v2, v2, Lcom/android/htcdialer/search/SearchablePhone;->type:I

    aput v2, v1, v12

    .line 1398
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v0           #contactData:Lcom/htc/service/dialer/ContactData;
    .end local v8           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v12           #i:I
    :cond_1
    move-object v8, v0

    .line 1384
    goto :goto_0

    .line 1403
    .restart local v0       #contactData:Lcom/htc/service/dialer/ContactData;
    .restart local v8       #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_2
    monitor-exit v13

    move-object v1, v0

    .line 1438
    .end local v0           #contactData:Lcom/htc/service/dialer/ContactData;
    .end local v8           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v9           #contactId:J
    :goto_2
    return-object v1

    .line 1407
    :cond_3
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2100()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2100()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    move-object v9, v1

    .line 1408
    .local v9, contactId:Ljava/lang/Long;
    :goto_3
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 1409
    sget-object v1, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    move-object v8, v1

    .line 1411
    .restart local v8       #contact:Lcom/android/htcdialer/search/SearchableContact;
    :goto_4
    if-eqz v8, :cond_a

    .line 1412
    new-instance v1, Lcom/htc/service/dialer/ContactData;

    iget-wide v2, v8, Lcom/android/htcdialer/search/SearchableContact;->id:J

    iget-object v4, v8, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/htc/service/dialer/ContactData;-><init>(JLjava/lang/String;Ljava/lang/String;II)V

    monitor-exit v13

    goto :goto_2

    .line 1435
    .end local v8           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v9           #contactId:Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    move-object v9, v0

    .line 1407
    goto :goto_3

    .restart local v9       #contactId:Ljava/lang/Long;
    :cond_5
    move-object v8, v0

    .line 1409
    goto :goto_4

    .line 1415
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v1

    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    move-object v11, v1

    .line 1417
    .local v11, contactIds:[J
    :goto_5
    if-eqz v11, :cond_a

    array-length v1, v11

    if-lez v1, :cond_a

    .line 1418
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_6
    array-length v1, v11

    if-ge v12, v1, :cond_a

    .line 1419
    aget-wide v1, v11, v12

    cmp-long v1, v1, v3

    if-ltz v1, :cond_9

    .line 1420
    aget-wide v1, v11, v12

    cmp-long v1, v1, v3

    if-lez v1, :cond_a

    .line 1421
    sget-object v1, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    aget-wide v2, v11, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    move-object v8, v1

    .line 1423
    .restart local v8       #contact:Lcom/android/htcdialer/search/SearchableContact;
    :goto_7
    if-eqz v8, :cond_a

    .line 1424
    new-instance v1, Lcom/htc/service/dialer/ContactData;

    iget-wide v2, v8, Lcom/android/htcdialer/search/SearchableContact;->id:J

    iget-object v4, v8, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/htcdialer/search/SearchableContact;->ringTonePath:Ljava/lang/String;

    iget v6, v8, Lcom/android/htcdialer/search/SearchableContact;->mSendToVoicemail:I

    iget v7, v8, Lcom/android/htcdialer/search/SearchableContact;->mVip:I

    invoke-direct/range {v1 .. v7}, Lcom/htc/service/dialer/ContactData;-><init>(JLjava/lang/String;Ljava/lang/String;II)V

    monitor-exit v13

    goto/16 :goto_2

    .end local v8           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v11           #contactIds:[J
    .end local v12           #i:I
    :cond_7
    move-object v11, v0

    .line 1415
    goto :goto_5

    .restart local v11       #contactIds:[J
    .restart local v12       #i:I
    :cond_8
    move-object v8, v0

    .line 1421
    goto :goto_7

    .line 1418
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1435
    .end local v9           #contactId:Ljava/lang/Long;
    .end local v11           #contactIds:[J
    .end local v12           #i:I
    :cond_a
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    move-object v1, v0

    .line 1438
    goto/16 :goto_2
.end method

.method public getRingtonePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "number"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    .line 1261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1262
    iget-object v4, p0, Lcom/android/htcdialer/DialerService$4;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1267
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    if-eqz v5, :cond_4

    .line 1268
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v5

    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 1269
    .local v1, contactIds:[J
    if-eqz v1, :cond_4

    .line 1270
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_4

    .line 1271
    aget-wide v5, v1, v2

    cmp-long v5, v5, v9

    if-nez v5, :cond_1

    .line 1272
    monitor-exit v4

    .line 1290
    .end local v1           #contactIds:[J
    .end local v2           #i:I
    :cond_0
    :goto_1
    return-object v3

    .line 1273
    .restart local v1       #contactIds:[J
    .restart local v2       #i:I
    :cond_1
    aget-wide v5, v1, v2

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 1270
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1274
    :cond_3
    aget-wide v5, v1, v2

    cmp-long v5, v5, v9

    if-lez v5, :cond_2

    .line 1275
    sget-object v5, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    aget-wide v6, v1, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableContact;

    .line 1276
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/android/htcdialer/search/SearchableContact;->ringTonePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1282
    iget-object v3, v0, Lcom/android/htcdialer/search/SearchableContact;->ringTonePath:Ljava/lang/String;

    monitor-exit v4

    goto :goto_1

    .line 1288
    .end local v0           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v1           #contactIds:[J
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public needToHangupCall(Ljava/lang/String;)Z
    .locals 12
    .parameter "number"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1299
    iget-object v5, p0, Lcom/android/htcdialer/DialerService$4;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1300
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    if-eqz v6, :cond_4

    .line 1301
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v6

    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 1302
    .local v1, contactIds:[J
    if-eqz v1, :cond_4

    .line 1303
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_4

    .line 1304
    aget-wide v6, v1, v2

    cmp-long v6, v6, v10

    if-nez v6, :cond_1

    .line 1305
    monitor-exit v5

    .line 1319
    .end local v1           #contactIds:[J
    .end local v2           #i:I
    :cond_0
    :goto_1
    return v3

    .line 1306
    .restart local v1       #contactIds:[J
    .restart local v2       #i:I
    :cond_1
    aget-wide v6, v1, v2

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1307
    monitor-exit v5

    move v3, v4

    goto :goto_1

    .line 1308
    :cond_2
    aget-wide v6, v1, v2

    cmp-long v6, v6, v10

    if-lez v6, :cond_3

    .line 1309
    sget-object v6, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    aget-wide v7, v1, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableContact;

    .line 1310
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_3

    iget v6, v0, Lcom/android/htcdialer/search/SearchableContact;->mSendToVoicemail:I

    if-lez v6, :cond_3

    .line 1311
    monitor-exit v5

    move v3, v4

    goto :goto_1

    .line 1303
    .end local v0           #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1317
    .end local v1           #contactIds:[J
    .end local v2           #i:I
    :cond_4
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public notifyDeleteContact(J)V
    .locals 1
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1248
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htcdialer/DialerService$4;->notifyUpdateContact(JI)V

    .line 1249
    return-void
.end method

.method public notifyInsertCallLog(JLjava/lang/String;JIJ)V
    .locals 13
    .parameter "callLogId"
    .parameter "number"
    .parameter "date"
    .parameter "type"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1225
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1226
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v10

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x7

    new-instance v0, Lcom/android/htcdialer/search/SearchableCallLog;

    const/4 v7, 0x1

    move-wide v1, p1

    move-wide/from16 v3, p7

    move-wide/from16 v5, p4

    move/from16 v8, p6

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/htcdialer/search/SearchableCallLog;-><init>(JJJIILjava/lang/String;)V

    invoke-virtual {v11, v12, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1229
    :cond_0
    return-void
.end method

.method public notifyInsertContact(J)V
    .locals 1
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1244
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htcdialer/DialerService$4;->notifyUpdateContact(JI)V

    .line 1245
    return-void
.end method

.method public notifyModifyContact(J)V
    .locals 1
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1252
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htcdialer/DialerService$4;->notifyUpdateContact(JI)V

    .line 1253
    return-void
.end method

.method public notifyUpdateCallLog()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 1217
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1218
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1219
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$400()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1221
    :cond_0
    return-void
.end method

.method public updateCache(ILandroid/os/Bundle;)V
    .locals 13
    .parameter "type"
    .parameter "bundle"

    .prologue
    const-wide/16 v6, 0x0

    .line 1201
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1202
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v10

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x7

    new-instance v0, Lcom/android/htcdialer/search/SearchableCallLog;

    const-string v1, "callLogId"

    invoke-virtual {p2, v1, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "contactId"

    invoke-virtual {p2, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "date"

    invoke-virtual {p2, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v7, 0x1

    const-string v8, "type"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/android/htcdialer/search/SearchableCallLog;-><init>(JJJIILjava/lang/String;)V

    invoke-virtual {v11, v12, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1208
    :cond_0
    return-void
.end method
