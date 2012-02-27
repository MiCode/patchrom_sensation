.class Lcom/android/providers/telephony/TelephonyProvider$3;
.super Ljava/lang/Thread;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/TelephonyProvider;->createCarriersCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/TelephonyProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/TelephonyProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 1760
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$3;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 1762
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$3;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    #calls: Lcom/android/providers/telephony/TelephonyProvider;->getOperatorNumeric()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$800(Lcom/android/providers/telephony/TelephonyProvider;)Ljava/lang/String;

    move-result-object v12

    .line 1763
    .local v12, numeric:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1766
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' OR numeric = \'00000\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1767
    .local v3, where:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$3;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    #getter for: Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$900(Lcom/android/providers/telephony/TelephonyProvider;)Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1768
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "carriers"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1769
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1770
    const-string v1, "carriers_cache"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1771
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v10

    .line 1772
    .local v10, length:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1773
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1774
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1775
    .local v11, map:Landroid/content/ContentValues;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v10, :cond_2

    .line 1776
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1778
    :cond_2
    const-string v1, "carriers_cache"

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1779
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1781
    .end local v9           #i:I
    .end local v11           #map:Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1782
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$302(Z)Z

    .line 1783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create carriers cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$400(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
