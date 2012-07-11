.class public final Lcom/google/android/mms/util/SqliteWrapper;
.super Ljava/lang/Object;
.source "SqliteWrapper.java"


# static fields
.field private static final SQLITE_EXCEPTION_DETAIL_MESSAGE:Ljava/lang/String; = "unable to open database file"

.field private static final TAG:Ljava/lang/String; = "SqliteWrapper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    .locals 2
    .parameter "context"
    .parameter "e"

    .prologue
    invoke-static {p1}, Lcom/google/android/mms/util/SqliteWrapper;->isLowMemory(Landroid/database/sqlite/SQLiteException;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x104011d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 106
    return-void

    .line 104
    :cond_0
    throw p1
.end method

.method public static delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "resolver"
    .parameter "uri"
    .parameter "where"
    .parameter "selectionArgs"

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 147
    :goto_0
    return v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "SqliteWrapper"

    const-string v2, "Catch a SQLiteException when delete: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    invoke-static {p0, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 147
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "resolver"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 158
    :goto_0
    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "SqliteWrapper"

    const-string v2, "Catch a SQLiteException when insert: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    invoke-static {p0, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 158
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isLowMemory(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, am:Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .local v1, outInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-boolean v2, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    goto :goto_0
.end method

.method private static isLowMemory(Landroid/database/sqlite/SQLiteException;)Z
    .locals 2
    .parameter "e"

    .prologue
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unable to open database file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "context"
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 112
    :try_start_0
    invoke-virtual/range {p1 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 116
    :goto_0
    return-object v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "SqliteWrapper"

    const-string v2, "Catch a SQLiteException when query: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    invoke-static {p0, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 116
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requery(Landroid/content/Context;Landroid/database/Cursor;)Z
    .locals 3
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 122
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 126
    :goto_0
    return v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "SqliteWrapper"

    const-string v2, "Catch a SQLiteException when requery: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    invoke-static {p0, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 126
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "resolver"
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "selectionArgs"

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 136
    :goto_0
    return v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "SqliteWrapper"

    const-string v2, "Catch a SQLiteException when update: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    invoke-static {p0, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 136
    const/4 v1, -0x1

    goto :goto_0
.end method
