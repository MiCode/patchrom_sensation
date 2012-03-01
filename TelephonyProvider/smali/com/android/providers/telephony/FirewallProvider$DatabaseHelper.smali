.class Lcom/android/providers/telephony/FirewallProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FirewallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/FirewallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 73
    const-string v0, "firewall.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 74
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 79
    const-string v0, "CREATE TABLE blacklist(_id TEXT NOT NULL PRIMARY KEY, notes TEXT DEFAULT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    const-string v0, "CREATE TABLE fwlog(_id INTEGER PRIMARY KEY AUTOINCREMENT, number TEXT DEFAULT NULL, date INTEGER NOT NULL DEFAULT 0, type INTEGER NOT NULL DEFAULT 0, reason INTEGER NOT NULL DEFAULT 0, data1 TEXT DEFAULT NULL, data2 TEXT DEFAULT NULL, read INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string v0, "CREATE TABLE whitelist(_id TEXT NOT NULL PRIMARY KEY, notes TEXT DEFAULT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string v0, "CREATE TABLE keyword(_id INTEGER PRIMARY KEY AUTOINCREMENT, data TEXT NOT NULL DEFAULT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 105
    const-string v1, "FirewallProvider"

    const-string v2, "onUpgrade triggered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    move v0, p2

    .line 109
    .local v0, version:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 110
    const-string v1, "ALTER TABLE fwlog ADD COLUMN read INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x2

    .line 114
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 115
    const-string v1, "ALTER TABLE blacklist ADD COLUMN notes TEXT DEFAULT NULL"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v1, "ALTER TABLE whitelist ADD COLUMN notes TEXT DEFAULT NULL"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v1, "CREATE TABLE keyword(_id INTEGER PRIMARY KEY AUTOINCREMENT, data TEXT NOT NULL DEFAULT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x3

    .line 124
    :cond_1
    if-eq v0, p3, :cond_2

    .line 125
    const-string v1, "FirewallProvider"

    const-string v2, "Destroying all old data and re-create."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v1, "DROP TABLE IF EXISTS blacklist"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    const-string v1, "DROP TABLE IF EXISTS fwlog"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    const-string v1, "DROP TABLE IF EXISTS whitelist"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    const-string v1, "DROP TABLE IF EXISTS keyword"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/FirewallProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    :cond_2
    return-void
.end method
