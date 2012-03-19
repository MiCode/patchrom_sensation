.class final Lcom/htc/server/ulog/HTCUBLogStore;
.super Ljava/lang/Object;
.source "HTCUBLogStore.java"


# static fields
.field private static final LENGTH_THRESHOLD:I = 0x40000

.field private static final TAG:Ljava/lang/String; = "UserBehaviorLoggingService"


# instance fields
.field private dropboxManager:Landroid/os/DropBoxManager;

.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

.field private mIsStopped:Z

.field private final mLogs:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/server/ulog/DatabaseHelper;)V
    .locals 2
    .parameter "ctx"
    .parameter "dbHelper"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    const/high16 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mLogs:Ljava/lang/StringBuffer;

    .line 28
    iput-object p1, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    .line 30
    iget-object v0, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/htc/server/ulog/HTCUBLogStore;->dropboxManager:Landroid/os/DropBoxManager;

    .line 31
    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mLogs:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const/high16 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 158
    return-void
.end method

.method public static logRosieLayout(Lcom/htc/utils/ulog/ULogData;)V
    .locals 5
    .parameter "ulogdata"

    .prologue
    .line 182
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 183
    const-string v3, "com.htc.launcher"

    invoke-interface {p0}, Lcom/htc/utils/ulog/ULogData;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "layout"

    invoke-interface {p0}, Lcom/htc/utils/ulog/ULogData;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    const-string v0, ""

    .line 185
    .local v0, cipherText:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v2, plainText:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/htc/utils/ulog/ULogData;->getData()Lcom/htc/utils/ulog/ULogData$ULogItem;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    .line 190
    sget-object v3, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_ROSIELAYOUT_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v3, v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 199
    .end local v0           #cipherText:Ljava/lang/String;
    .end local v2           #plainText:Ljava/lang/StringBuilder;
    :cond_1
    return-void

    .line 192
    .restart local v0       #cipherText:Ljava/lang/String;
    .restart local v2       #plainText:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 193
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "UserBehaviorLoggingService"

    const-string v4, "logRosieLayout exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    const/4 v2, 0x0

    throw v3
.end method

.method private logTextFile(Ljava/io/InputStream;Ljava/io/FileWriter;)V
    .locals 7
    .parameter "stream"
    .parameter "writer"

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, input:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 164
    .local v3, line:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 165
    .end local v1           #input:Ljava/io/BufferedReader;
    .local v2, input:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 166
    invoke-virtual {p2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 167
    const-string v4, "\n"

    invoke-virtual {p2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 171
    .end local v2           #input:Ljava/io/BufferedReader;
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #input:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v4, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error in logging text file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    if-eqz v1, :cond_0

    .line 175
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 179
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 169
    .end local v1           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileWriter;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 173
    if-eqz v2, :cond_2

    .line 175
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    move-object v1, v2

    .line 178
    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v1       #input:Ljava/io/BufferedReader;
    goto :goto_2

    .line 173
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v1, :cond_3

    .line 175
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 173
    :cond_3
    :goto_5
    throw v4

    .line 176
    :catch_1
    move-exception v5

    goto :goto_5

    .restart local v0       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    :catch_3
    move-exception v4

    goto :goto_3

    .line 173
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v1       #input:Ljava/io/BufferedReader;
    goto :goto_4

    .line 170
    :catch_4
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public addLog(Ljava/lang/String;)V
    .locals 5
    .parameter "log"

    .prologue
    const v1, 0x3fff6

    const/4 v4, 0x0

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "...[trim]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mLogs:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mLogs:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    const-string v1, "HTC_UB"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/ulog/DatabaseHelper;->add_HTC_UB_QueueRecord(Ljava/lang/String;J)V

    .line 47
    iget-object v0, p0, Lcom/htc/server/ulog/HTCUBLogStore;->dropboxManager:Landroid/os/DropBoxManager;

    const-string v1, "HTC_UB"

    iget-object v2, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mLogs:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "log exceeds buffer limit, save to dropbox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mLogs:Ljava/lang/StringBuffer;

    const/high16 v1, 0x4

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mLogs:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    return-void
.end method

.method public flush()V
    .locals 5

    .prologue
    .line 141
    iget-object v1, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mLogs:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    const-string v2, "HTC_UB"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/server/ulog/DatabaseHelper;->add_HTC_UB_QueueRecord(Ljava/lang/String;J)V

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/ulog/HTCUBLogStore;->dropboxManager:Landroid/os/DropBoxManager;

    const-string v2, "HTC_UB"

    iget-object v3, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mLogs:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mLogs:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    const/high16 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 150
    :cond_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/ulog/HTCUBLogStore;->mIsStopped:Z

    .line 154
    return-void
.end method

.method public upload(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 55
    const-string v0, "HTC_UB"

    invoke-virtual {p0, v0, p1}, Lcom/htc/server/ulog/HTCUBLogStore;->uploadInternal(Ljava/lang/String;I)V

    .line 56
    const-string v0, "HTC_UP"

    invoke-virtual {p0, v0, p1}, Lcom/htc/server/ulog/HTCUBLogStore;->uploadInternal(Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public uploadInternal(Ljava/lang/String;I)V
    .locals 19
    .parameter "tagName"
    .parameter "type"

    .prologue
    .line 60
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    const-string v3, "UserBehaviorLoggingService"

    const-string v5, "tag is empty. stop upload!"

    invoke-static {v3, v5}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/server/ulog/HTCUBLogStore;->mIsStopped:Z

    if-nez v3, :cond_0

    .line 67
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/ulog/HTCUBLogStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/htc/server/ulog/DatabaseHelper;->get_HTC_UB_QueueRecords(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 68
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_8

    .line 69
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 70
    .local v9, count:I
    const-string v3, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sync count="

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-lez v9, :cond_7

    .line 72
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    const/16 v16, 0x0

    .line 74
    .local v16, tag:Ljava/lang/String;
    const-wide/16 v6, -0x1

    .line 81
    .local v6, time:J
    const-string v3, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "merge "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v17, " UB logs"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/ulog/HTCUBLogStore;->mContext:Landroid/content/Context;

    const-string v5, "dropbox"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DropBoxManager;

    .line 83
    .local v2, dbox:Landroid/os/DropBoxManager;
    new-instance v4, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/misc/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".dbox_tmp"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    .local v4, temp_file:Ljava/io/File;
    const/4 v14, 0x0

    .line 86
    .local v14, fileWriter:Ljava/io/FileWriter;
    :try_start_1
    new-instance v15, Ljava/io/FileWriter;

    invoke-direct {v15, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 87
    .end local v14           #fileWriter:Ljava/io/FileWriter;
    .local v15, fileWriter:Ljava/io/FileWriter;
    :try_start_2
    const-string v3, "userdebug"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/ulog/HTCUBLogStore;->mContext:Landroid/content/Context;

    invoke-static {v3, v15}, Lcom/htc/server/ulog/Utils;->addExtraInformation(Landroid/content/Context;Ljava/io/FileWriter;)V

    .line 90
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 91
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_9

    .line 92
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 93
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 94
    const-string v3, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handle "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v17, "@"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v12

    .line 96
    .local v12, entry:Landroid/os/DropBoxManager$Entry;
    if-eqz v12, :cond_3

    .line 98
    invoke-virtual {v12}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Lcom/htc/server/ulog/HTCUBLogStore;->logTextFile(Ljava/io/InputStream;Ljava/io/FileWriter;)V

    .line 100
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 105
    .end local v12           #entry:Landroid/os/DropBoxManager$Entry;
    :catch_0
    move-exception v13

    move-object v14, v15

    .line 106
    .end local v15           #fileWriter:Ljava/io/FileWriter;
    .local v13, ex:Ljava/lang/Exception;
    .restart local v14       #fileWriter:Ljava/io/FileWriter;
    :goto_2
    :try_start_3
    const-string v3, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error in upload(try/catch): "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    const/16 v16, 0x0

    .line 108
    const-wide/16 v6, -0x1

    .line 111
    if-eqz v14, :cond_4

    .line 112
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V

    .line 113
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 120
    .end local v13           #ex:Ljava/lang/Exception;
    :cond_5
    :goto_3
    if-eqz v16, :cond_7

    const-wide/16 v17, -0x1

    cmp-long v3, v6, v17

    if-eqz v3, :cond_7

    .line 121
    :try_start_5
    const-string v3, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "sync "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v17, "@"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v8, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.BUGREPORT"

    invoke-direct {v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v8, broadcastIntent:Landroid/content/Intent;
    const-string v3, "fromDropBox"

    const/4 v5, 0x1

    invoke-virtual {v8, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    const-string v3, "tag"

    move-object/from16 v0, v16

    invoke-virtual {v8, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v3, "time"

    invoke-virtual {v8, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 126
    const-string v3, "msg"

    const-string v5, "Sync user behavior logs"

    invoke-virtual {v8, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_6

    .line 128
    const-string v3, "triggerType"

    const/4 v5, 0x1

    invoke-virtual {v8, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/ulog/HTCUBLogStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    .end local v2           #dbox:Landroid/os/DropBoxManager;
    .end local v4           #temp_file:Ljava/io/File;
    .end local v6           #time:J
    .end local v8           #broadcastIntent:Landroid/content/Intent;
    .end local v14           #fileWriter:Ljava/io/FileWriter;
    .end local v16           #tag:Ljava/lang/String;
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 137
    .end local v9           #count:I
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/server/ulog/HTCUBLogStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/htc/server/ulog/DatabaseHelper;->clear_HTC_UB_QueueRecords(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    .restart local v2       #dbox:Landroid/os/DropBoxManager;
    .restart local v4       #temp_file:Ljava/io/File;
    .restart local v6       #time:J
    .restart local v9       #count:I
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v15       #fileWriter:Ljava/io/FileWriter;
    .restart local v16       #tag:Ljava/lang/String;
    :cond_9
    move-object/from16 v16, p1

    .line 103
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 104
    const/4 v5, 0x2

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;IJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 111
    if-eqz v15, :cond_a

    .line 112
    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileWriter;->close()V

    .line 113
    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 114
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_b
    :goto_5
    move-object v14, v15

    .line 118
    .end local v15           #fileWriter:Ljava/io/FileWriter;
    .restart local v14       #fileWriter:Ljava/io/FileWriter;
    goto/16 :goto_3

    .line 110
    :catchall_0
    move-exception v3

    .line 111
    :goto_6
    if-eqz v14, :cond_c

    .line 112
    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V

    .line 113
    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 114
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 110
    :cond_d
    :goto_7
    :try_start_9
    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 134
    .end local v2           #dbox:Landroid/os/DropBoxManager;
    .end local v4           #temp_file:Ljava/io/File;
    .end local v6           #time:J
    .end local v9           #count:I
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v14           #fileWriter:Ljava/io/FileWriter;
    .end local v16           #tag:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 135
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 115
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v2       #dbox:Landroid/os/DropBoxManager;
    .restart local v4       #temp_file:Ljava/io/File;
    .restart local v6       #time:J
    .restart local v9       #count:I
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v14       #fileWriter:Ljava/io/FileWriter;
    .restart local v16       #tag:Ljava/lang/String;
    :catch_2
    move-exception v13

    .line 116
    .restart local v13       #ex:Ljava/lang/Exception;
    :try_start_a
    const-string v5, "UserBehaviorLoggingService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "error in upload(finally): "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 115
    :catch_3
    move-exception v13

    .line 116
    const-string v3, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error in upload(finally): "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 115
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v14           #fileWriter:Ljava/io/FileWriter;
    .restart local v15       #fileWriter:Ljava/io/FileWriter;
    :catch_4
    move-exception v13

    .line 116
    .restart local v13       #ex:Ljava/lang/Exception;
    const-string v3, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error in upload(finally): "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_5

    .line 110
    .end local v13           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    move-object v14, v15

    .end local v15           #fileWriter:Ljava/io/FileWriter;
    .restart local v14       #fileWriter:Ljava/io/FileWriter;
    goto :goto_6

    .line 105
    :catch_5
    move-exception v13

    goto/16 :goto_2
.end method
