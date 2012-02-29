.class public Lcom/htc/provider/HtcContactsContract$DefaultActionHelper;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultActionHelper"
.end annotation


# static fields
.field public static IS_DEFAULT_ACTION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1138
    const-string v0, "data13"

    sput-object v0, Lcom/htc/provider/HtcContactsContract$DefaultActionHelper;->IS_DEFAULT_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resetIsDefaultAction(Landroid/content/ContentResolver;Ljava/util/ArrayList;J)Z
    .locals 12
    .parameter "resolver"
    .parameter
    .parameter "newDefaultDataId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 1147
    .local p1, dataIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 1148
    .local v7, result:Z
    const/4 v5, 0x0

    .line 1149
    .local v5, isResetAll:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 1150
    :cond_0
    const/4 v10, 0x0

    .line 1196
    :goto_0
    return v10

    .line 1152
    :cond_1
    const-wide/16 v10, -0x1

    cmp-long v10, p2, v10

    if-nez v10, :cond_2

    .line 1153
    const/4 v5, 0x1

    .line 1156
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1157
    .local v8, size:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1158
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v8, :cond_4

    .line 1159
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1160
    .local v3, id:J
    add-int/lit8 v10, v8, -0x1

    if-ge v2, v10, :cond_3

    .line 1161
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1162
    const-string v10, " ,"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1158
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1165
    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1169
    .end local v3           #id:J
    :cond_4
    const/4 v10, 0x0

    const-string v11, "_id IN ( "

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1170
    const-string v10, " ) "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1172
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    .local v6, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1176
    .local v9, values:Landroid/content/ContentValues;
    sget-object v10, Lcom/htc/provider/HtcContactsContract$DefaultActionHelper;->IS_DEFAULT_ACTION:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1177
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1178
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1179
    invoke-virtual {v1, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1180
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    if-nez v5, :cond_5

    .line 1182
    new-instance v9, Landroid/content/ContentValues;

    .end local v9           #values:Landroid/content/ContentValues;
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1183
    .restart local v9       #values:Landroid/content/ContentValues;
    sget-object v10, Lcom/htc/provider/HtcContactsContract$DefaultActionHelper;->IS_DEFAULT_ACTION:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1184
    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1185
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1186
    invoke-virtual {v1, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1187
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    :cond_5
    :try_start_0
    const-string v10, "com.android.contacts"

    invoke-virtual {p0, v10, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    const/4 v7, 0x1

    :goto_3
    move v10, v7

    .line 1196
    goto/16 :goto_0

    .line 1194
    :catch_0
    move-exception v10

    goto :goto_3

    .line 1193
    :catch_1
    move-exception v10

    goto :goto_3
.end method
