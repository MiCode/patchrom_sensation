.class public Lcom/htc/util/calendar/HtcCalendarManager;
.super Ljava/lang/Object;
.source "HtcCalendarManager.java"

# interfaces
.implements Lcom/htc/util/calendar/notes/HtcAssociatedNotesFlag;


# static fields
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field public static final EXTRA_EVENT_URI:Ljava/lang/String; = "com.htc.calendar.event_uri"

.field private static final TAG:Ljava/lang/String; = "HtcCalendarManager"

.field private static me:Lcom/htc/util/calendar/HtcCalendarManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    .line 458
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "attendeeName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "attendeeEmail"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "attendeeRelationship"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "attendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 59
    if-eqz p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcCalendarManager contruct by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/HtcCalendarManager;->Debug(Ljava/lang/String;)V

    .line 64
    :goto_0
    iput-object p1, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 66
    return-void

    .line 62
    :cond_0
    const-string v0, "HtcCalendarManager contruct by null??"

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/HtcCalendarManager;->Debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private Debug(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 536
    if-eqz p1, :cond_0

    const-string v0, "HtcCalendarManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 70
    const-class v1, Lcom/htc/util/calendar/HtcCalendarManager;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/htc/util/calendar/HtcCalendarManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/util/calendar/HtcCalendarManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    .line 74
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    iget-object v0, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 77
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 80
    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    iget-object v0, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 81
    if-eqz p0, :cond_3

    .line 82
    const-string v0, "HtcCalendarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationContext() should not be null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    iput-object p0, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 88
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 84
    :cond_3
    const-string v0, "HtcCalendarManager"

    const-string v1, "getApplicationContext() should not be null: null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private importCalendar(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 12
    .parameter "cr"
    .parameter "calendar_id"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 403
    .local p4, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p5, alarms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v6, 0x0

    .line 404
    .local v6, idx:I
    const/4 v9, 0x0

    .line 405
    .local v9, numberCal:I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 409
    .local v3, cv:Landroid/content/ContentValues;
    move-object v1, v3

    .line 410
    .local v1, cacheContentValue:Landroid/content/ContentValues;
    const-string v10, "calendar_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 413
    sget-object v10, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v10, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 414
    .local v7, newEvent:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 415
    .local v8, newEventId:Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    .line 417
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 418
    .local v2, cacheContentValue2:Landroid/content/ContentValues;
    if-eqz v2, :cond_0

    .line 419
    const-string v10, "hasAlarm"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const/4 v4, 0x1

    .line 420
    .local v4, hasAlarm:Z
    :goto_1
    if-eqz v4, :cond_0

    .line 422
    const-string v10, "event_id"

    invoke-virtual {v2, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    sget-object v10, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v10, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 427
    .end local v4           #hasAlarm:Z
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 428
    goto :goto_0

    .line 419
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 430
    .end local v1           #cacheContentValue:Landroid/content/ContentValues;
    .end local v2           #cacheContentValue2:Landroid/content/ContentValues;
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v7           #newEvent:Landroid/net/Uri;
    .end local v8           #newEventId:Ljava/lang/String;
    :cond_2
    return v9
.end method


# virtual methods
.method public buildEvents(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "vCalString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    new-instance v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;

    invoke-direct {v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;-><init>()V

    .line 388
    .local v0, cal:Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
    invoke-virtual {v0, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->parseVCalendar(Ljava/lang/String;)Z

    move-result v1

    .line 389
    .local v1, isPass:Z
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 390
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventsCV()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public buildVCalendar(J)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    .locals 2
    .parameter "eventId"

    .prologue
    .line 377
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 378
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/htc/util/calendar/HtcCalendarManager;->buildVCalendar(Landroid/net/Uri;)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    move-result-object v1

    return-object v1
.end method

.method public buildVCalendar(Landroid/net/Uri;)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    .locals 2
    .parameter "uniEvent"

    .prologue
    .line 364
    new-instance v0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    invoke-direct {v0}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;-><init>()V

    iget-object v1, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->buildVCalendar(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    move-result-object v0

    return-object v0
.end method

.method public checkIfAssociatedNotes(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .parameter "uniEventUri"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/notes/NotesHelper;->checkIfAssociatedNotes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public generateEventUri(JJJ)Landroid/net/Uri;
    .locals 1
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 167
    invoke-static/range {p1 .. p6}, Lcom/htc/util/calendar/tools/UriTools;->generateEventUri(JJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public generateEventUriString(JJJ)Ljava/lang/String;
    .locals 1
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 155
    invoke-static/range {p1 .. p6}, Lcom/htc/util/calendar/tools/UriTools;->generateEventUriString(JJJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateTheEventUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "eventId"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/htc/util/calendar/tools/UriTools;->generateTheEventUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public generateTheEventUriString(J)Ljava/lang/String;
    .locals 1
    .parameter "eventId"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/htc/util/calendar/tools/UriTools;->generateTheEventUriString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateTheEventVCalendarEventTitleUri(J)Landroid/net/Uri;
    .locals 12
    .parameter "eventId"

    .prologue
    .line 210
    iget-object v9, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v9, p1, p2}, Lcom/htc/util/calendar/tools/UriTools;->generateTheEventVCalendarEventTitleUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v6

    .line 212
    .local v6, ret:Landroid/net/Uri;
    if-eqz v6, :cond_1

    .line 213
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 214
    .local v7, title:Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/calendar/HtcCalendarManager;->buildVCalendar(J)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    move-result-object v8

    .line 215
    .local v8, vcal:Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    const/4 v2, 0x0

    .line 221
    .local v2, fout:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "vcalendar"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, pathStr:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v4, path:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 224
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 227
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    .local v1, fileout:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 230
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .local v3, fout:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v8}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 241
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 247
    .end local v1           #fileout:Ljava/io/File;
    .end local v3           #fout:Ljava/io/FileOutputStream;
    .end local v4           #path:Ljava/io/File;
    .end local v5           #pathStr:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #vcal:Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    :cond_1
    :goto_0
    return-object v6

    .line 242
    .restart local v1       #fileout:Ljava/io/File;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    .restart local v4       #path:Ljava/io/File;
    .restart local v5       #pathStr:Ljava/lang/String;
    .restart local v7       #title:Ljava/lang/String;
    .restart local v8       #vcal:Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .line 245
    goto :goto_0

    .line 233
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fileout:Ljava/io/File;
    .end local v3           #fout:Ljava/io/FileOutputStream;
    .end local v4           #path:Ljava/io/File;
    .end local v5           #pathStr:Ljava/lang/String;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 234
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v9, "HtcCalendarManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateTheEventVCalendarEventTitleUri() #1 should not be null:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 242
    :catch_2
    move-exception v0

    .line 243
    .local v0, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .line 245
    goto :goto_0

    .line 235
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 236
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v9, "HtcCalendarManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateTheEventVCalendarEventTitleUri() #2 should not be null:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 237
    const/4 v6, 0x0

    .line 241
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 242
    :catch_4
    move-exception v0

    .line 243
    const/4 v6, 0x0

    .line 245
    goto :goto_0

    .line 240
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 241
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 244
    :goto_4
    throw v9

    .line 242
    :catch_5
    move-exception v0

    .line 243
    .restart local v0       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_4

    .line 240
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fileout:Ljava/io/File;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    .restart local v4       #path:Ljava/io/File;
    .restart local v5       #pathStr:Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 235
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 233
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public generateUniEventUri(JJJ)Landroid/net/Uri;
    .locals 7
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/util/calendar/tools/UriTools;->generateUniEventUri(Landroid/content/Context;JJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public generateUniEventUriString(JJJ)Ljava/lang/String;
    .locals 7
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/util/calendar/tools/UriTools;->generateUniEventUriString(Landroid/content/Context;JJJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssociatedNotesId(Ljava/lang/String;)J
    .locals 2
    .parameter "uniEventUri"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/notes/NotesHelper;->getAssociatedNotesId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAttendees(Landroid/net/Uri;I)Ljava/util/ArrayList;
    .locals 16
    .parameter "uri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    const/4 v11, 0x0

    .line 475
    .local v11, member:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/Attendee;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 476
    .local v1, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/htc/util/calendar/tools/UriTools;->getEventId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v9

    .line 477
    .local v9, event_id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 527
    :goto_0
    return-object v2

    .line 479
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "event_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v15

    .line 483
    .local v15, where:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 489
    :cond_1
    const-string v2, " and "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "attendeeStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 495
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAttendees: where="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/util/calendar/HtcCalendarManager;->Debug(Ljava/lang/String;)V

    .line 498
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "attendeeName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ASC, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "attendeeEmail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ASC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 504
    .local v13, sort:Ljava/lang/StringBuffer;
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/htc/util/calendar/HtcCalendarManager;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 506
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_3

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 507
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 508
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #member:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/Attendee;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .restart local v11       #member:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/Attendee;>;"
    :cond_4
    const-string v2, "attendeeStatus"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 511
    .local v14, status:I
    const-string v2, "attendeeName"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 512
    .local v12, name:Ljava/lang/String;
    const-string v2, "attendeeEmail"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 513
    .local v8, email:Ljava/lang/String;
    const-string v2, "default@htc.calendar"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "exchange@htc.calendar"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Outlook"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 521
    :cond_5
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 524
    .end local v8           #email:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #status:I
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 525
    :cond_7
    const/4 v7, 0x0

    move-object v2, v11

    .line 527
    goto/16 :goto_0

    .line 519
    .restart local v8       #email:Ljava/lang/String;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v14       #status:I
    :cond_8
    new-instance v2, Lcom/htc/util/calendar/Attendee;

    invoke-direct {v2, v12, v8, v14}, Lcom/htc/util/calendar/Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getAvailableColor()Ljava/lang/Integer;
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v14, 0x1

    const v13, -0xf287ed

    const/4 v12, 0x0

    .line 259
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 261
    .local v7, colorUsage:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const v1, -0x30cdde

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const v1, -0x21a883

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const v1, -0x62b755

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const v1, -0x8fbc51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const v1, -0xfea379

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const v1, -0xe17d78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const v1, -0xde5c85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const v1, -0xd964d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const v1, -0xb7731c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const v1, -0x875709

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const v1, -0x487615

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const v1, -0xe46fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const v1, -0x26ff4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const v1, -0x1998f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const v1, -0x3c99b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const v1, -0x8fb4a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const v1, -0xccb68d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const v1, -0x9ba477

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const v1, -0xf76ea7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const v1, -0x7b8cf3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const v1, -0x3a6ac8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const v1, -0xadd65d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const v1, -0xdce9b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const v1, -0x78aaf7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const v1, -0x73aff5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const v1, -0xbdefb6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const v1, -0xd6ad86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const v1, -0x547500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const v1, -0x7acefc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const v1, -0x4ec9a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const v1, -0xe7d3a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const v1, -0xa094fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const v1, -0x4ebbf2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const v1, -0x79a5a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const v1, -0xd6ad5d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const v1, -0xd09cf7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const v1, -0x8ee9ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const v1, -0x7290b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const v1, -0xe47786

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const v1, -0xeda5ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const v1, -0x96ebda

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const v1, -0xcccccd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const v1, -0xd78ab2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const v1, -0xf0b4c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const v1, -0x94ccfc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-array v2, v14, [Ljava/lang/String;

    const-string v1, "calendar_color"

    aput-object v1, v2, v12

    .line 314
    .local v2, projectArys:[Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 315
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "calendar_color IS NOT NULL "

    .line 316
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 318
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 319
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 320
    .local v10, nCnt:I
    const-string v1, "HtcCalendarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " color IS NOT NULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-lez v10, :cond_5

    .line 324
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 328
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 338
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_2
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 342
    .local v8, it:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 343
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 344
    .local v9, key:Ljava/lang/Integer;
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 346
    .local v11, value:Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    .line 347
    const-string v1, "HtcCalendarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Avaiable color "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 354
    .end local v8           #it:Ljava/util/Iterator;
    .end local v9           #key:Ljava/lang/Integer;
    .end local v10           #nCnt:I
    .end local v11           #value:Ljava/lang/Integer;
    :goto_1
    return-object v1

    .line 331
    .restart local v10       #nCnt:I
    :cond_4
    const-string v1, "HtcCalendarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not find matching for color "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    .end local v10           #nCnt:I
    :cond_5
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method

.method public getEvent(Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;
    .locals 1
    .parameter "eventUri"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/tools/UriTools;->getEventInstance(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v0

    return-object v0
.end method

.method public importCalendar(Landroid/content/ContentResolver;JLjava/lang/String;)I
    .locals 17
    .parameter "cr"
    .parameter "calendar_id"
    .parameter "vCalString"

    .prologue
    .line 442
    new-instance v13, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;

    invoke-direct {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;-><init>()V

    .line 443
    .local v13, cal:Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->parseVCalendar(Ljava/lang/String;)Z

    move-result v15

    .line 445
    .local v15, isPass:Z
    if-nez v15, :cond_0

    const/4 v1, 0x0

    .line 455
    :goto_0
    return v1

    .line 447
    :cond_0
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventsCV()Ljava/util/ArrayList;

    move-result-object v5

    .line 448
    .local v5, multiEventsCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiToDoCV()Ljava/util/ArrayList;

    move-result-object v11

    .line 449
    .local v11, multiToDoCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventAlarmsCV()Ljava/util/ArrayList;

    move-result-object v6

    .line 450
    .local v6, multiEventsAlarmCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiToDoAlarmsCV()Ljava/util/ArrayList;

    move-result-object v12

    .local v12, multiToDoAlarmCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    .line 452
    invoke-direct/range {v1 .. v6}, Lcom/htc/util/calendar/HtcCalendarManager;->importCalendar(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v14

    .local v14, evCal:I
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    .line 453
    invoke-direct/range {v7 .. v12}, Lcom/htc/util/calendar/HtcCalendarManager;->importCalendar(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v16

    .line 455
    .local v16, todoCal:I
    add-int v1, v14, v16

    goto :goto_0
.end method

.method public isEventExist(Landroid/net/Uri;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/tools/UriTools;->isEventExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public setAssociation(JLjava/lang/String;Z)Landroid/net/Uri;
    .locals 1
    .parameter "noteId"
    .parameter "eventUri"
    .parameter "isSet"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/htc/util/calendar/notes/NotesHelper;->setAssociation(Landroid/content/Context;JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public uniEventToEventUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "uniEvent"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/tools/UriTools;->uniEventToEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
