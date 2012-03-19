.class final Lcom/htc/server/ulog/PolicyStore;
.super Ljava/lang/Object;
.source "PolicyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;
    }
.end annotation


# static fields
.field private static final APPID_OF_SECOND_SWITCH:Ljava/lang/String; = "tellhtc_client"

.field private static final CATEGORY_OF_SECOND_SWITCH_OF_ERROR_REPORT:Ljava/lang/String; = "error_report"

.field private static final CATEGORY_OF_SECOND_SWITCH_OF_USAGE_REPORT:Ljava/lang/String; = "usage_report"

.field private static final CUSTOMIZATION_CATEGORY:Ljava/lang/String; = "ulog_policy_"

.field private static final KEY_ENABLE:Ljava/lang/String; = "enable"

.field private static final POLICY_CUSTOMIZE_URI:Ljava/lang/String; = "content://customization_settings/SettingTable"

.field private static final TAG:Ljava/lang/String; = "UserBehaviorLoggingService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

.field private mPolicyBundle:Landroid/os/Bundle;

.field private mPolicyBundleLock:Ljava/lang/Object;

.field private mPolicyListenerList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/server/ulog/DatabaseHelper;)V
    .locals 2
    .parameter "ctx"
    .parameter "dbHelper"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v1, Lcom/htc/server/ulog/PolicyStore$1;

    invoke-direct {v1, p0}, Lcom/htc/server/ulog/PolicyStore$1;-><init>(Lcom/htc/server/ulog/PolicyStore;)V

    iput-object v1, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyListenerList:Landroid/os/RemoteCallbackList;

    .line 40
    iput-object p1, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/htc/server/ulog/PolicyStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    .line 42
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundleLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;

    iget-object v1, p0, Lcom/htc/server/ulog/PolicyStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    invoke-direct {v0, v1}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;-><init>(Lcom/htc/server/ulog/DatabaseHelper;)V

    .line 47
    .local v0, loader:Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;
    #calls: Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->disableDebuggingRomPolicyInNeed()V
    invoke-static {v0}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->access$000(Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;)V

    .line 50
    invoke-direct {p0}, Lcom/htc/server/ulog/PolicyStore;->renewPolicyBundle()V

    .line 51
    return-void
.end method

.method private static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 208
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 209
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 214
    return-object v0
.end method

.method private static getPolicyValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "allPolicy"
    .parameter "appid"
    .parameter "category"
    .parameter "key"

    .prologue
    .line 239
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 240
    if-eqz p0, :cond_2

    .line 241
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 242
    .local v0, appBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 244
    .local v1, cateBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 245
    invoke-virtual {v1, p3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 246
    .local v5, keyBundle:Landroid/os/Bundle;
    if-eqz v5, :cond_2

    .line 247
    invoke-virtual {v5, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, value:Ljava/lang/String;
    const-string v7, "due_date"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 251
    .local v3, dueDate:J
    const/4 v2, 0x0

    .line 252
    .local v2, defaultValue:Ljava/lang/String;
    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-eqz v7, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-gez v7, :cond_0

    .line 253
    const-string v7, "default_value"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 254
    move-object v6, v2

    .line 256
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", due date: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", current time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", default value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    .line 260
    if-nez v6, :cond_1

    const-string v6, ""

    .line 267
    .end local v0           #appBundle:Landroid/os/Bundle;
    .end local v1           #cateBundle:Landroid/os/Bundle;
    .end local v2           #defaultValue:Ljava/lang/String;
    .end local v3           #dueDate:J
    .end local v5           #keyBundle:Landroid/os/Bundle;
    .end local v6           #value:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v6

    :cond_2
    const-string v6, ""

    goto :goto_0
.end method

.method private static loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 16
    .parameter "context"
    .parameter "customizeURI"
    .parameter "selection"

    .prologue
    .line 154
    const/4 v10, 0x0

    .line 155
    .local v10, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 157
    .local v8, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 158
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 161
    if-eqz v10, :cond_1

    .line 162
    const-string v2, "value"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 163
    .local v15, valueIdx:I
    const-string v2, "key"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 164
    .local v12, keyIdx:I
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 165
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object v9, v8

    .line 166
    .end local v8           #bundle:Landroid/os/Bundle;
    .local v9, bundle:Landroid/os/Bundle;
    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    .line 168
    const-string v6, ""

    .line 169
    .local v6, appId:Ljava/lang/String;
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 170
    .local v13, keyStr:Ljava/lang/String;
    const-string v2, "ulog_policy_"

    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 171
    .local v14, n:I
    const/4 v2, -0x1

    if-eq v14, v2, :cond_3

    .line 172
    const-string v2, "ulog_policy_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 177
    :goto_1
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/htc/server/ulog/PolicyStore;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v7

    .line 178
    .local v7, b:Landroid/os/Bundle;
    if-nez v7, :cond_0

    .line 179
    new-instance v7, Landroid/os/Bundle;

    .end local v7           #b:Landroid/os/Bundle;
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 180
    .restart local v7       #b:Landroid/os/Bundle;
    const-string v2, "UserBehaviorLoggingService"

    const-string v3, "getBolb() return empty stream!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    if-nez v9, :cond_6

    .line 183
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    .end local v9           #bundle:Landroid/os/Bundle;
    .restart local v8       #bundle:Landroid/os/Bundle;
    :goto_2
    :try_start_2
    invoke-virtual {v8, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 185
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v2

    if-nez v2, :cond_4

    .line 194
    .end local v6           #appId:Ljava/lang/String;
    .end local v7           #b:Landroid/os/Bundle;
    .end local v12           #keyIdx:I
    .end local v13           #keyStr:Ljava/lang/String;
    .end local v14           #n:I
    .end local v15           #valueIdx:I
    :cond_1
    :goto_3
    if-eqz v10, :cond_2

    .line 196
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 198
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_4
    const/4 v10, 0x0

    .line 202
    :cond_2
    return-object v8

    .line 174
    .end local v8           #bundle:Landroid/os/Bundle;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #appId:Ljava/lang/String;
    .restart local v9       #bundle:Landroid/os/Bundle;
    .restart local v12       #keyIdx:I
    .restart local v13       #keyStr:Ljava/lang/String;
    .restart local v14       #n:I
    .restart local v15       #valueIdx:I
    :cond_3
    :try_start_4
    const-string v2, "UserBehaviorLoggingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ulog_policy_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 190
    .end local v6           #appId:Ljava/lang/String;
    .end local v13           #keyStr:Ljava/lang/String;
    .end local v14           #n:I
    :catch_0
    move-exception v11

    move-object v8, v9

    .line 191
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v12           #keyIdx:I
    .end local v15           #valueIdx:I
    .restart local v8       #bundle:Landroid/os/Bundle;
    .local v11, ex:Ljava/lang/Exception;
    :goto_5
    :try_start_5
    const-string v2, "UserBehaviorLoggingService"

    const-string v3, "Quering customization database failed with exception, abort performing customization"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 192
    const/4 v8, 0x0

    .line 194
    if-eqz v10, :cond_2

    .line 196
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 197
    :catch_1
    move-exception v2

    goto :goto_4

    .end local v11           #ex:Ljava/lang/Exception;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #appId:Ljava/lang/String;
    .restart local v7       #b:Landroid/os/Bundle;
    .restart local v12       #keyIdx:I
    .restart local v13       #keyStr:Ljava/lang/String;
    .restart local v14       #n:I
    .restart local v15       #valueIdx:I
    :cond_4
    move-object v9, v8

    .line 187
    .end local v8           #bundle:Landroid/os/Bundle;
    .restart local v9       #bundle:Landroid/os/Bundle;
    goto/16 :goto_0

    .line 194
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #appId:Ljava/lang/String;
    .end local v7           #b:Landroid/os/Bundle;
    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v12           #keyIdx:I
    .end local v13           #keyStr:Ljava/lang/String;
    .end local v14           #n:I
    .end local v15           #valueIdx:I
    .restart local v8       #bundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    :goto_6
    if-eqz v10, :cond_5

    .line 196
    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 198
    :goto_7
    const/4 v10, 0x0

    .line 194
    :cond_5
    throw v2

    .line 197
    :catch_2
    move-exception v3

    goto :goto_7

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    :catch_3
    move-exception v2

    goto :goto_4

    .line 194
    .end local v8           #bundle:Landroid/os/Bundle;
    .restart local v9       #bundle:Landroid/os/Bundle;
    .restart local v12       #keyIdx:I
    .restart local v15       #valueIdx:I
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9           #bundle:Landroid/os/Bundle;
    .restart local v8       #bundle:Landroid/os/Bundle;
    goto :goto_6

    .line 190
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v12           #keyIdx:I
    .end local v15           #valueIdx:I
    :catch_4
    move-exception v11

    goto :goto_5

    .end local v8           #bundle:Landroid/os/Bundle;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #appId:Ljava/lang/String;
    .restart local v7       #b:Landroid/os/Bundle;
    .restart local v9       #bundle:Landroid/os/Bundle;
    .restart local v12       #keyIdx:I
    .restart local v13       #keyStr:Ljava/lang/String;
    .restart local v14       #n:I
    .restart local v15       #valueIdx:I
    :cond_6
    move-object v8, v9

    .end local v9           #bundle:Landroid/os/Bundle;
    .restart local v8       #bundle:Landroid/os/Bundle;
    goto :goto_2

    .end local v6           #appId:Ljava/lang/String;
    .end local v7           #b:Landroid/os/Bundle;
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v13           #keyStr:Ljava/lang/String;
    .end local v14           #n:I
    .restart local v9       #bundle:Landroid/os/Bundle;
    :cond_7
    move-object v8, v9

    .end local v9           #bundle:Landroid/os/Bundle;
    .restart local v8       #bundle:Landroid/os/Bundle;
    goto :goto_3
.end method

.method private notifyPolicyChanged(Z)V
    .locals 2
    .parameter "isSIE"

    .prologue
    .line 143
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/server/ulog/PolicyStore;->notifyPolicyListeners(Z)V

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.ULOG_POLICY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isSIE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method private renewPolicyBundle()V
    .locals 8

    .prologue
    .line 60
    iget-object v4, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundleLock:Ljava/lang/Object;

    monitor-enter v4

    .line 62
    :try_start_0
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    invoke-virtual {v3}, Lcom/htc/server/ulog/DatabaseHelper;->getPolicy()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v5, "tellhtc_client"

    const-string v6, "error_report"

    const-string v7, "enable"

    invoke-static {v3, v5, v6, v7}, Lcom/htc/server/ulog/PolicyStore;->getPolicyValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, valueOfLogErrorReportBySecondSwitch:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v5, "second_switch_of_error_report"

    const-string v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    :goto_1
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v5, "tellhtc_client"

    const-string v6, "usage_report"

    const-string v7, "enable"

    invoke-static {v3, v5, v6, v7}, Lcom/htc/server/ulog/PolicyStore;->getPolicyValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, valueOfLogUsageReportBySecondSwitch:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v5, "second_switch_of_usage_report"

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    :goto_2
    invoke-direct {p0}, Lcom/htc/server/ulog/PolicyStore;->renewSetting2PolicyBundle()V

    .line 82
    monitor-exit v4

    .line 83
    return-void

    .line 63
    .end local v1           #valueOfLogErrorReportBySecondSwitch:Ljava/lang/String;
    .end local v2           #valueOfLogUsageReportBySecondSwitch:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 72
    .restart local v1       #valueOfLogErrorReportBySecondSwitch:Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", appid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "tellhtc_client"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", category: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "error_report"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", key: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "enable"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    .restart local v2       #valueOfLogUsageReportBySecondSwitch:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", appid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "tellhtc_client"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", category: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "usage_report"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", key: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "enable"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method private renewSetting2PolicyBundle()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 86
    iget-object v5, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    if-nez v5, :cond_0

    .line 87
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    .line 88
    :cond_0
    iget-object v5, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/server/ulog/Utils;->isTellHTCSettingShown(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/server/ulog/Utils;->isErrorReportSettingEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 89
    .local v0, canSupportErrorReport:Z
    :goto_0
    iget-object v5, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/server/ulog/Utils;->isTellHTCSettingShown(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/server/ulog/Utils;->isUserProfilingSettingEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 90
    .local v2, canSupportUserProfiling:Z
    :goto_1
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/server/ulog/Utils;->isSenseDotComEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 91
    .local v1, canSupportSenseDotCom:Z
    iget-object v4, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundleLock:Ljava/lang/Object;

    monitor-enter v4

    .line 92
    :try_start_0
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v5, "settings_error_report"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v5, "settings_user_profiling"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    const-string v5, "settings_sense_dot_com"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    monitor-exit v4

    .line 96
    return-void

    .end local v0           #canSupportErrorReport:Z
    .end local v1           #canSupportSenseDotCom:Z
    .end local v2           #canSupportUserProfiling:Z
    :cond_1
    move v0, v4

    .line 88
    goto :goto_0

    .restart local v0       #canSupportErrorReport:Z
    :cond_2
    move v2, v4

    .line 89
    goto :goto_1

    .line 95
    .restart local v1       #canSupportSenseDotCom:Z
    .restart local v2       #canSupportUserProfiling:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public getPolicy()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insertPolicyFromCustomizationBroadcast()V
    .locals 4

    .prologue
    .line 113
    const-string v1, "UserBehaviorLoggingService"

    const-string v2, "[insertPolicyFromCustomizationBroadcast] begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/htc/server/ulog/PolicyStore;->mContext:Landroid/content/Context;

    const-string v2, "content://customization_settings/SettingTable"

    const-string v3, "key like \'ulog_policy%\'"

    invoke-static {v1, v2, v3}, Lcom/htc/server/ulog/PolicyStore;->loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 115
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/server/ulog/PolicyStore;->setPolicyAndNotify(Landroid/os/Bundle;Z)V

    .line 116
    invoke-static {}, Lcom/htc/server/ulog/UserBehaviorPreference;->getInstance()Lcom/htc/server/ulog/UserBehaviorPreference;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/server/ulog/UserBehaviorPreference;->setFirstUpdateTimeOfSIE(J)V

    .line 117
    const-string v1, "UserBehaviorLoggingService"

    const-string v2, "[insertPolicyFromCustomizationBroadcast] end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public notifyPolicyListeners(Z)V
    .locals 4
    .parameter "isSettingUIChanged"

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/htc/server/ulog/PolicyStore;->renewSetting2PolicyBundle()V

    .line 224
    :goto_0
    iget-object v2, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 225
    .local v1, i:I
    :goto_1
    if-lez v1, :cond_1

    .line 226
    add-int/lit8 v1, v1, -0x1

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IRemoteCallback;

    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyBundle:Landroid/os/Bundle;

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 222
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    :cond_0
    invoke-direct {p0}, Lcom/htc/server/ulog/PolicyStore;->renewPolicyBundle()V

    goto :goto_0

    .line 233
    .restart local v1       #i:I
    :cond_1
    iget-object v2, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 234
    return-void
.end method

.method public register(Landroid/os/IRemoteCallback;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/server/ulog/PolicyStore;->mPolicyListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public setPolicyAndNotify(Landroid/os/Bundle;Z)V
    .locals 3
    .parameter "bundle"
    .parameter "isSIE"

    .prologue
    .line 124
    new-instance v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;

    iget-object v1, p0, Lcom/htc/server/ulog/PolicyStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    invoke-direct {v0, v1}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;-><init>(Lcom/htc/server/ulog/DatabaseHelper;)V

    .line 125
    .local v0, loader:Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;
    if-eqz p2, :cond_1

    .line 126
    invoke-virtual {v0, p1, p2}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->loadSIEPolicies(Landroid/os/Bundle;Z)V

    .line 127
    invoke-direct {p0, p2}, Lcom/htc/server/ulog/PolicyStore;->notifyPolicyChanged(Z)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {v0, p1}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->loadProvisionPolicy(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    invoke-direct {p0, p2}, Lcom/htc/server/ulog/PolicyStore;->notifyPolicyChanged(Z)V

    .line 134
    const-string v1, "UserBehaviorLoggingService"

    const-string v2, "[setPolicyAndNotify(non-SIE)] setPolicyInternal() succeeds => notify UPolicy listener and broadcast to others"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_2
    const-string v1, "UserBehaviorLoggingService"

    const-string v2, "[setPolicyAndNotify(non-SIE)] ABNORMAL setPolicyInternal() called. But nothing gets updated. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
