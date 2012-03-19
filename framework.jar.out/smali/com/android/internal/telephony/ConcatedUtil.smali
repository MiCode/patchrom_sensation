.class public Lcom/android/internal/telephony/ConcatedUtil;
.super Ljava/lang/Object;
.source "ConcatedUtil.java"


# static fields
.field public static final CONCATED_OFFSET_BASE:I = 0x0

.field public static final CONCATED_PASS_FAIL:I = 0x8

.field public static final CONCATED_PASS_MIDDLEFAIL:I = 0x9

.field public static final CONCATED_PASS_RETRY:I = 0x7

.field public static final CONCATED_STATUS_FAILED:I = 0x5

.field public static final CONCATED_STATUS_OUTBOX:I = 0x4

.field public static final CONCATED_STATUS_RETRY:I = 0x6

.field public static final CONCATED_STATUS_SENT:I = 0x2

.field protected static final RAW_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ConcatedUtil"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field protected final mRawUri:Landroid/net/Uri;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "reference_number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "sequence"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/ConcatedUtil;->RAW_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "content://htcmessageutil"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "ems"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ConcatedUtil;->mRawUri:Landroid/net/Uri;

    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/ConcatedUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 57
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ConcatedUtil;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/ConcatedUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ConcatedUtil;->mResolver:Landroid/content/ContentResolver;

    .line 59
    return-void
.end method


# virtual methods
.method public deleteentry(ILjava/lang/String;IIII)Z
    .locals 8
    .parameter "nDate"
    .parameter "destAddr"
    .parameter "nRef"
    .parameter "nCount"
    .parameter "nSeq"
    .parameter "deleteStatus"

    .prologue
    const/4 v7, 0x1

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reference_number ="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .local v2, where:Ljava/lang/StringBuilder;
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    const-string v4, " AND address = ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v4, " AND count > ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v4, " AND status = ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v4, " AND date = ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const/4 v4, 0x4

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const-string v4, "0"

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 198
    .local v3, whereArgs:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ConcatedUtil;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/internal/telephony/ConcatedUtil;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 200
    .local v0, ncount:I
    const/4 v1, 0x0

    .line 201
    .local v1, subaddr:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_0

    .line 202
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    :goto_0
    return v7

    .line 204
    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public insertRawTable(ILjava/lang/String;Lcom/android/internal/telephony/SmsHeader$ConcatRef;I)I
    .locals 6
    .parameter "nDate"
    .parameter "destAddr"
    .parameter "concatRef"
    .parameter "rawStatus"

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, subaddr:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_0

    .line 66
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reference_number ="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, where:Ljava/lang/StringBuilder;
    iget v4, p3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v4, " AND address = ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v4, " AND count = ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget v5, p3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 84
    .local v3, whereArgs:[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v1, values:Landroid/content/ContentValues;
    const-string v4, "date"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v4, "address"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v4, "reference_number"

    iget v5, p3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v4, "count"

    iget v5, p3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string/jumbo v4, "sequence"

    iget v5, p3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    const-string/jumbo v4, "status"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    iget-object v4, p0, Lcom/android/internal/telephony/ConcatedUtil;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/internal/telephony/ConcatedUtil;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 95
    const/4 v4, -0x1

    return v4

    .line 68
    .end local v1           #values:Landroid/content/ContentValues;
    .end local v2           #where:Ljava/lang/StringBuilder;
    .end local v3           #whereArgs:[Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public query2StatusCount(ILjava/lang/String;IIIII)I
    .locals 9
    .parameter "nDate"
    .parameter "destAddr"
    .parameter "nRef"
    .parameter "nCount"
    .parameter "nSeq"
    .parameter "queryStatus"
    .parameter "queryStatus2"

    .prologue
    .line 165
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reference_number ="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .local v8, where:Ljava/lang/StringBuilder;
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    const-string v0, " AND address = ?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v0, " AND count > ?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v0, " AND date = ?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v0, " AND (status = ? OR status = ?)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    const-string v1, "0"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 176
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 177
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 178
    .local v7, ncount:I
    iget-object v0, p0, Lcom/android/internal/telephony/ConcatedUtil;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/ConcatedUtil;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/ConcatedUtil;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 180
    if-eqz v6, :cond_0

    .line 181
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_0
    return v7
.end method

.method public queryStatusCount(ILjava/lang/String;IIII)I
    .locals 9
    .parameter "nDate"
    .parameter "destAddr"
    .parameter "nRef"
    .parameter "nCount"
    .parameter "nSeq"
    .parameter "queryStatus"

    .prologue
    .line 136
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reference_number ="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .local v8, where:Ljava/lang/StringBuilder;
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v0, " AND address = ?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v0, " AND count > ?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v0, " AND date = ?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v0, " AND status = ?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    const-string v1, "0"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 146
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 147
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 148
    .local v7, ncount:I
    iget-object v0, p0, Lcom/android/internal/telephony/ConcatedUtil;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/ConcatedUtil;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/ConcatedUtil;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 150
    if-eqz v6, :cond_0

    .line 151
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_0
    return v7
.end method

.method public resettable()Z
    .locals 5

    .prologue
    .line 212
    const-string v1, "Concate"

    const-string/jumbo v2, "resettable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "count > 0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, where:Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ConcatedUtil;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/ConcatedUtil;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 219
    :catchall_0
    move-exception v1

    throw v1

    .line 217
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateRawTable(ILjava/lang/String;IIII)I
    .locals 9
    .parameter "nDate"
    .parameter "nAddr"
    .parameter "nRef"
    .parameter "nCount"
    .parameter "nSeq"
    .parameter "nStatus"

    .prologue
    const/4 v8, 0x1

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, subaddr:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_1

    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reference_number ="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .local v3, where:Ljava/lang/StringBuilder;
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v5, " AND count = ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v5, " AND sequence = ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v5, " AND address = ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v5, " AND date = ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 119
    .local v4, whereArgs:[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v2, values:Landroid/content/ContentValues;
    const-string/jumbo v5, "status"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    iget-object v5, p0, Lcom/android/internal/telephony/ConcatedUtil;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/internal/telephony/ConcatedUtil;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v7, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, ncount:I
    if-ge v0, v8, :cond_2

    .line 126
    const-string v5, "Concate"

    const-string v6, "Can not match Raw SMS in Raw table!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    :goto_1
    const/4 v5, -0x1

    return v5

    .line 105
    .end local v0           #ncount:I
    .end local v2           #values:Landroid/content/ContentValues;
    .end local v3           #where:Ljava/lang/StringBuilder;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    move-object v1, p2

    goto :goto_0

    .line 127
    .restart local v0       #ncount:I
    .restart local v2       #values:Landroid/content/ContentValues;
    .restart local v3       #where:Ljava/lang/StringBuilder;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    :cond_2
    if-le v0, v8, :cond_0

    .line 128
    const-string v5, "Concate"

    const-string v6, "Match duplicate Raw SMS in Raw table!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
