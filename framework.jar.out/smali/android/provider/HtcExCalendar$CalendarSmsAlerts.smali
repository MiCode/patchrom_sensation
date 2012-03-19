.class public final Landroid/provider/HtcExCalendar$CalendarSmsAlerts;
.super Ljava/lang/Object;
.source "HtcExCalendar.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/HtcCalendarContract$CalendarAlertsColumns;
.implements Landroid/provider/HtcCalendarContract$EventsColumns;
.implements Landroid/provider/HtcCalendarContract$CalendarColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcExCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarSmsAlerts"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_BY_INSTANCE:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "CalendarSmsAlerts"

.field private static final WHERE_ALARM_EXISTS:Ljava/lang/String; = "event_id=?"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 343
    const-string v0, "content://com.android.calendar/calendar_sms_alerts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcExCalendar$CalendarSmsAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 348
    const-string v0, "content://com.android.calendar/calendar_sms_alerts/by_instance"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcExCalendar$CalendarSmsAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 339
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final alarmExists(Landroid/content/ContentResolver;J)Z
    .locals 7
    .parameter "cr"
    .parameter "eventId"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 374
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "alarmTime"

    aput-object v3, v2, v6

    .line 375
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "event_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Landroid/provider/HtcExCalendar$CalendarSmsAlerts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 382
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 384
    .local v1, found:Z
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_0

    .line 385
    const/4 v1, 0x1

    .line 388
    :cond_0
    if-eqz v0, :cond_1

    .line 389
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_1
    return v1

    .line 388
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 389
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_2
    throw v3
.end method

.method public static final deleteAlarm(Landroid/content/ContentResolver;J)V
    .locals 0
    .parameter "cr"
    .parameter "eventId"

    .prologue
    .line 397
    return-void
.end method

.method public static final insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;
    .locals 6
    .parameter "cr"
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"
    .parameter "alarmTime"
    .parameter "minutes"

    .prologue
    const/4 v5, 0x0

    .line 353
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 354
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 355
    const-string v3, "begin"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 356
    const-string v3, "end"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 357
    const-string v3, "alarmTime"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 359
    .local v0, currentTime:J
    const-string v3, "creationTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    const-string/jumbo v3, "receivedTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    const-string/jumbo v3, "notifyTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    const-string/jumbo v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    const-string/jumbo v3, "minutes"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    sget-object v3, Landroid/provider/HtcExCalendar$CalendarSmsAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 369
    sget-object v1, Landroid/provider/HtcExCalendar$CalendarSmsAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
