.class public final Lcom/htc/util/calendar/HtcCalendar;
.super Ljava/lang/Object;
.source "HtcCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/calendar/HtcCalendar$EventCategory;,
        Lcom/htc/util/calendar/HtcCalendar$Appointment;
    }
.end annotation


# static fields
.field private static final EVENT_SORT_ORDER:Ljava/lang/String; = "startDay ASC, allDay DESC, begin ASC"

.field public static final INDEX_ALL_DAY:I = 0x3

.field public static final INDEX_BEGIN:I = 0x7

.field public static final INDEX_COLOR:I = 0x5

.field public static final INDEX_END:I = 0x8

.field public static final INDEX_END_DAY:I = 0xb

.field public static final INDEX_END_MINUTE:I = 0xd

.field public static final INDEX_EVENT_ID:I = 0x9

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_FACEBOOK_AVATAR_LARGE:I = 0x10

.field public static final INDEX_FACEBOOK_AVATAR_SMALL:I = 0x11

.field public static final INDEX_FACEBOOK_SOURCE_ID:I = 0xe

.field public static final INDEX_FACEBOOK_TYPE:I = 0xf

.field public static final INDEX_HAS_ALARM:I = 0x4

.field public static final INDEX_RRULE:I = 0x6

.field public static final INDEX_START_DAY:I = 0xa

.field public static final INDEX_START_MINUTE:I = 0xc

.field public static final INDEX_TITLE:I = 0x1

.field public static final INSTANCES_PROJ:[Ljava/lang/String; = null

.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final SENSE_10:I = 0x0

.field public static final SENSE_15:I = 0x1

.field public static final SENSE_16:I = 0x2

.field public static final SENSE_20:I = 0x3

.field public static final SENSE_21:I = 0x4

.field public static final SENSE_30:I = 0x5

.field private static bSense21:Z

.field private static final localLOGV:Z

.field private static mAppointmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendar$Appointment;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mSelectedId:J

.field private static mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mTime:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 40
    const-string v0, "HtcCalendar"

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->LOG_TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    .line 47
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "facebook_source_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "facebook_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "facebook_avatar_large"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "facebook_avatar_small"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    .line 110
    sput-object v4, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 111
    sput-object v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    .line 114
    sput-boolean v3, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    .line 115
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertUtcToLocal(Landroid/text/format/Time;J)J
    .locals 2
    .parameter "recycle"
    .parameter "utcTime"

    .prologue
    .line 147
    if-nez p0, :cond_0

    .line 148
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 150
    .restart local p0
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 152
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSenseVersion()I
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x4

    .line 126
    .local v0, sense_version:I
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const/4 v0, 0x0

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    const/4 v0, 0x2

    goto :goto_0

    .line 130
    :cond_2
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    const/4 v0, 0x3

    goto :goto_0

    .line 132
    :cond_3
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    const/4 v0, 0x4

    goto :goto_0

    .line 134
    :cond_4
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private static goToToday()V
    .locals 3

    .prologue
    .line 600
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 601
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 602
    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    .line 603
    return-void
.end method

.method private static isRegularMeeting(JJZ)Z
    .locals 6
    .parameter "startday"
    .parameter "endday"
    .parameter "allday"

    .prologue
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 158
    .local v0, now:J
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 159
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 161
    if-eqz p4, :cond_0

    .line 162
    const-string v4, "UTC"

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 167
    :goto_0
    iget-wide v4, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 169
    .local v2, startday_:I
    int-to-long v4, v2

    cmp-long v4, v4, p0

    if-lez v4, :cond_1

    int-to-long v4, v2

    cmp-long v4, v4, p2

    if-gez v4, :cond_1

    .line 170
    const/4 v4, 0x1

    .line 173
    :goto_1
    return v4

    .line 164
    .end local v2           #startday_:I
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_0

    .line 173
    .restart local v2       #startday_:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static query2Month(Landroid/text/format/Time;)I
    .locals 17
    .parameter "begin"

    .prologue
    .line 507
    move-object/from16 v13, p0

    .line 509
    .local v13, queryBegin:Landroid/text/format/Time;
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 510
    .local v14, queryEnd:Landroid/text/format/Time;
    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    .line 511
    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    .line 512
    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x3a

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 513
    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 514
    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 515
    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 516
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 520
    .local v12, julian_day:I
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 521
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 522
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 524
    const/4 v3, 0x0

    .line 527
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 528
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 529
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 530
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 531
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_3

    .line 532
    const-string v3, "visible=1"

    .line 548
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :goto_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 556
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 558
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 559
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 560
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x1

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 563
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 564
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 565
    const/4 v7, 0x0

    .line 567
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 535
    .end local v7           #c:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 537
    :cond_4
    const-string v3, "("

    .line 538
    const/4 v11, 0x1

    .line 539
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 540
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 544
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 543
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 548
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 550
    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method public static final query2MonthEvent(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 17
    .parameter "context"
    .parameter "selectedId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendar$Appointment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1114
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    .line 1115
    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 1117
    if-nez p0, :cond_1

    .line 1118
    const/4 v0, 0x0

    .line 1195
    :goto_1
    return-object v0

    .line 1114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1121
    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1122
    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    .line 1125
    :cond_2
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->goToToday()V

    .line 1126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 1128
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 1129
    .local v13, queryBegin:Landroid/text/format/Time;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    .line 1130
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    .line 1131
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    .line 1132
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iput v0, v13, Landroid/text/format/Time;->hour:I

    .line 1133
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    iput v0, v13, Landroid/text/format/Time;->minute:I

    .line 1134
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    iput v0, v13, Landroid/text/format/Time;->second:I

    .line 1136
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 1137
    .local v14, queryEnd:Landroid/text/format/Time;
    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    .line 1138
    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    .line 1139
    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x3c

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 1140
    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 1141
    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 1142
    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 1143
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 1147
    .local v12, julian_day:I
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1148
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1149
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1151
    const/4 v3, 0x0

    .line 1154
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1155
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 1156
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 1157
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 1158
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_6

    .line 1160
    const-string v3, "visible=1"

    .line 1176
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    :goto_3
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1184
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1186
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1187
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 1188
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x0

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 1191
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1192
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1193
    const/4 v7, 0x0

    .line 1195
    :cond_5
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1163
    .end local v7           #c:Landroid/database/Cursor;
    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1165
    :cond_7
    const-string v3, "("

    .line 1166
    const/4 v11, 0x1

    .line 1167
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1168
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_8

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1172
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1171
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 1176
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1178
    :cond_9
    const-string v3, "visible=1"

    goto/16 :goto_3
.end method

.method private static queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V
    .locals 12
    .parameter "c"
    .parameter "qbegin"
    .parameter "category"
    .parameter "skip_crossday_event"

    .prologue
    .line 180
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, start_mins:I
    const/4 v2, 0x0

    .line 184
    .local v2, end_mins:I
    const/4 v0, 0x0

    .line 185
    .local v0, bSkip:Z
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 186
    .local v6, tnow:Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 189
    :cond_0
    new-instance v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    invoke-direct {v1}, Lcom/htc/util/calendar/HtcCalendar$Appointment;-><init>()V

    .line 190
    .local v1, e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    const/16 v7, 0xc

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v3, v7

    .line 191
    const/16 v7, 0xd

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v2, v7

    .line 192
    const/16 v7, 0x9

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->id_:I

    .line 193
    const/4 v7, 0x5

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->color_:I

    .line 194
    const/4 v7, 0x7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    .line 195
    const/16 v7, 0x8

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    .line 197
    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    .line 199
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_2

    .line 200
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 201
    .local v4, t:Landroid/text/format/Time;
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    invoke-static {v4, v7, v8}, Lcom/htc/util/calendar/HtcCalendar;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    .line 202
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    invoke-static {v4, v7, v8}, Lcom/htc/util/calendar/HtcCalendar;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    .line 203
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 204
    .local v5, t1:Landroid/text/format/Time;
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    invoke-virtual {v5, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 205
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    if-ne p2, v7, :cond_1

    .line 206
    const/4 v0, 0x1

    .line 207
    :cond_1
    iget v7, v5, Landroid/text/format/Time;->monthDay:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    if-le v7, v8, :cond_2

    iget v7, v5, Landroid/text/format/Time;->monthDay:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    sget-object v7, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    if-ne p2, v7, :cond_2

    .line 208
    const/4 v0, 0x1

    .line 211
    .end local v4           #t:Landroid/text/format/Time;
    .end local v5           #t1:Landroid/text/format/Time;
    :cond_2
    div-int/lit8 v7, v3, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    .line 212
    rem-int/lit8 v7, v3, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->minutes_:J

    .line 213
    div-int/lit8 v7, v2, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    .line 214
    rem-int/lit8 v7, v2, 0x3c

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->eminutes_:J

    .line 215
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 216
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    const-wide/16 v9, 0x18

    add-long/2addr v7, v9

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    .line 217
    :cond_3
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    const-wide/16 v9, 0x18

    cmp-long v7, v7, v9

    if-ltz v7, :cond_4

    .line 218
    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    const-wide/16 v9, 0x18

    sub-long/2addr v7, v9

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    .line 220
    :cond_4
    if-le v2, v3, :cond_7

    .line 221
    sub-int v7, v2, v3

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->period_:J

    .line 222
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->crossday_:Z

    .line 228
    :goto_1
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->title_:Ljava/lang/String;

    .line 229
    const/4 v7, 0x2

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->location_:Ljava/lang/String;

    .line 230
    iput-object p2, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 234
    const/16 v7, 0xa

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/16 v9, 0xb

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iget-boolean v11, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    invoke-static {v7, v8, v9, v10, v11}, Lcom/htc/util/calendar/HtcCalendar;->isRegularMeeting(JJZ)Z

    move-result v7

    iput-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->regular_:Z

    .line 236
    const/16 v7, 0xa

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->startday_:J

    .line 237
    const/16 v7, 0xb

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->endday_:J

    .line 239
    const/16 v7, 0xe

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_source_id_:Ljava/lang/String;

    .line 240
    const/16 v7, 0xf

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_type_:Ljava/lang/String;

    .line 241
    const/16 v7, 0x10

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_avatar_large_:Ljava/lang/String;

    .line 242
    const/16 v7, 0x11

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_avatar_small_:Ljava/lang/String;

    .line 244
    if-eqz v0, :cond_9

    .line 245
    const/4 v1, 0x0

    .line 246
    const/4 v0, 0x0

    .line 293
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 295
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_5

    .line 296
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 297
    const/4 p0, 0x0

    .line 300
    :cond_5
    return-void

    .line 197
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 224
    :cond_7
    sub-int v7, v3, v2

    rsub-int v7, v7, 0x5a0

    int-to-long v7, v7

    :try_start_1
    iput-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->period_:J

    .line 225
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->crossday_:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 295
    .end local v0           #bSkip:Z
    .end local v1           #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    .end local v2           #end_mins:I
    .end local v3           #start_mins:I
    .end local v6           #tnow:Landroid/text/format/Time;
    :catchall_0
    move-exception v7

    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_8

    .line 296
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 297
    const/4 p0, 0x0

    :cond_8
    throw v7

    .line 248
    .restart local v0       #bSkip:Z
    .restart local v1       #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    .restart local v2       #end_mins:I
    .restart local v3       #start_mins:I
    .restart local v6       #tnow:Landroid/text/format/Time;
    :cond_9
    :try_start_2
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    if-ne p2, v7, :cond_14

    .line 250
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->regular_:Z

    if-eqz v7, :cond_d

    .line 251
    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_a

    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_c

    .line 252
    :cond_a
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-nez v7, :cond_b

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_b

    iget v7, p1, Landroid/text/format/Time;->minute:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->minutes_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_b

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    cmp-long v7, v7, v9

    if-gtz v7, :cond_b

    iget v7, p1, Landroid/text/format/Time;->minute:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->eminutes_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_b

    .line 255
    const/4 v1, 0x0

    goto :goto_2

    .line 257
    :cond_b
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 260
    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    .line 262
    :cond_d
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->crossday_:Z

    if-eqz v7, :cond_f

    .line 263
    if-eqz p3, :cond_e

    .line 264
    const/4 v1, 0x0

    goto :goto_2

    .line 266
    :cond_e
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 267
    :cond_f
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->crossday_:Z

    if-nez v7, :cond_13

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_10

    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_13

    .line 268
    :cond_10
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-nez v7, :cond_11

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_11

    iget v7, p1, Landroid/text/format/Time;->minute:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->minutes_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_11

    iget v7, p1, Landroid/text/format/Time;->hour:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    cmp-long v7, v7, v9

    if-gtz v7, :cond_11

    iget v7, p1, Landroid/text/format/Time;->minute:I

    int-to-long v7, v7

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->eminutes_:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_11

    .line 271
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 273
    :cond_11
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_12

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_12

    .line 274
    const/4 v1, 0x0

    .line 275
    goto/16 :goto_2

    .line 277
    :cond_12
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 280
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 283
    :cond_14
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-nez v7, :cond_15

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_16

    :cond_15
    iget-boolean v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    if-eqz v7, :cond_17

    iget-wide v7, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_17

    .line 286
    :cond_16
    if-eqz p3, :cond_17

    .line 287
    const/4 v1, 0x0

    .line 288
    goto/16 :goto_2

    .line 291
    :cond_17
    sget-object v7, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method public static final queryEvent(Landroid/content/Context;J)Lcom/htc/util/calendar/HtcCalendar$Appointment;
    .locals 22
    .parameter "context"
    .parameter "selectedId"

    .prologue
    .line 682
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    const/16 v18, 0x1

    :goto_0
    sput-boolean v18, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    .line 683
    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 685
    if-nez p0, :cond_1

    .line 686
    const/4 v4, 0x0

    .line 1005
    :goto_1
    return-object v4

    .line 682
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 689
    :cond_1
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v18, :cond_2

    .line 690
    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    .line 693
    :cond_2
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->goToToday()V

    .line 694
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    sput-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 696
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 697
    .local v11, queryBegin:Landroid/text/format/Time;
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->year:I

    .line 698
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->month:I

    .line 699
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    .line 702
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->hour:I

    .line 703
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->minute:I

    .line 704
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->second:I

    .line 706
    invoke-static {v11}, Lcom/htc/util/calendar/HtcCalendar;->queryToday(Landroid/text/format/Time;)I

    move-result v3

    .line 708
    .local v3, count:I
    if-nez v3, :cond_3

    .line 709
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->year:I

    .line 710
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->month:I

    .line 711
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    .line 712
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->hour:I

    .line 713
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->minute:I

    .line 714
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->second:I

    .line 715
    invoke-static {v11}, Lcom/htc/util/calendar/HtcCalendar;->queryTomorrow(Landroid/text/format/Time;)I

    move-result v3

    .line 718
    :cond_3
    const/16 v17, 0x0

    .line 720
    .local v17, weekevent:Z
    if-nez v3, :cond_4

    .line 721
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->year:I

    .line 722
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->month:I

    .line 723
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    .line 724
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->hour:I

    .line 725
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->minute:I

    .line 726
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Landroid/text/format/Time;->second:I

    .line 727
    invoke-static {v11}, Lcom/htc/util/calendar/HtcCalendar;->query2Month(Landroid/text/format/Time;)I

    move-result v3

    .line 729
    if-lez v3, :cond_4

    .line 730
    const/16 v17, 0x1

    .line 750
    :cond_4
    const/4 v13, -0x1

    .line 751
    .local v13, startingEventIdx:I
    const/4 v9, -0x1

    .line 752
    .local v9, nonStartEventIdx:I
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 753
    .local v12, startingEventBegin:Landroid/text/format/Time;
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 755
    .local v10, notStartEventBegin:Landroid/text/format/Time;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 756
    .local v6, eventBegin:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 758
    .local v7, eventEnd:Landroid/text/format/Time;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 759
    .local v16, tnow:Landroid/text/format/Time;
    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->setToNow()V

    .line 762
    const/4 v5, 0x0

    .line 764
    .local v5, e_:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v3, :cond_1c

    .line 765
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    .line 766
    .local v4, e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 767
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 783
    if-eqz v17, :cond_a

    .line 784
    iget-boolean v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 785
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_5

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 786
    :cond_5
    if-nez v5, :cond_6

    .line 787
    move v13, v8

    .line 788
    move-object v5, v4

    .line 764
    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 795
    :cond_7
    if-nez v5, :cond_8

    .line 796
    move v13, v8

    .line 797
    move-object v5, v4

    .line 798
    goto :goto_3

    .line 800
    :cond_8
    if-eqz v5, :cond_9

    iget-boolean v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 801
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 802
    .local v14, t1:Landroid/text/format/Time;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 804
    .local v15, t2:Landroid/text/format/Time;
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 805
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 807
    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    iget v0, v15, Landroid/text/format/Time;->month:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    iget v0, v15, Landroid/text/format/Time;->monthDay:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gez v18, :cond_6

    .line 808
    move v13, v8

    .line 809
    move-object v5, v4

    .line 810
    goto :goto_3

    .line 813
    .end local v14           #t1:Landroid/text/format/Time;
    .end local v15           #t2:Landroid/text/format/Time;
    :cond_9
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_6

    .line 814
    move v13, v8

    .line 815
    move-object v5, v4

    .line 816
    goto :goto_3

    .line 821
    :cond_a
    iget-boolean v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 822
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->hour:I

    .line 823
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->minute:I

    .line 824
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->second:I

    .line 825
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->hour:I

    .line 826
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->minute:I

    .line 827
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->second:I

    .line 829
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    .line 830
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    .line 831
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 839
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_b

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 841
    :cond_b
    if-nez v5, :cond_6

    .line 842
    move v13, v8

    .line 843
    move-object v5, v4

    goto/16 :goto_3

    .line 854
    :cond_c
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_12

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_12

    .line 859
    if-eqz v5, :cond_10

    .line 860
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    move-wide/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_d

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->eminutes_:J

    move-wide/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->minute:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_e

    :cond_d
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_f

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_f

    .line 862
    :cond_e
    const/4 v9, -0x1

    .line 863
    goto/16 :goto_3

    .line 865
    :cond_f
    move v13, v8

    .line 866
    move-object v5, v4

    .line 867
    goto/16 :goto_3

    .line 870
    :cond_10
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v7, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    .line 871
    :cond_11
    move v13, v8

    .line 872
    move-object v5, v4

    .line 873
    goto/16 :goto_3

    .line 876
    :cond_12
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_18

    .line 877
    if-eqz v5, :cond_16

    .line 878
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x18

    cmp-long v18, v18, v20

    if-nez v18, :cond_13

    .line 879
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->ehour_:J

    .line 880
    :cond_13
    iget-boolean v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    .line 882
    iget-object v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    move-object/from16 v18, v0

    sget-object v19, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 884
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gez v18, :cond_15

    .line 885
    move v13, v8

    .line 886
    move-object v5, v4

    .line 887
    goto/16 :goto_3

    .line 890
    :cond_14
    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-lez v18, :cond_15

    .line 891
    move v13, v8

    .line 892
    move-object v5, v4

    .line 893
    goto/16 :goto_3

    .line 898
    :cond_15
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_6

    .line 899
    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    .line 900
    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    iget-wide v0, v5, Lcom/htc/util/calendar/HtcCalendar$Appointment;->hour_:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_6

    .line 901
    move v13, v8

    .line 902
    move-object v5, v4

    .line 903
    goto/16 :goto_3

    .line 908
    :cond_16
    iget v0, v11, Landroid/text/format/Time;->minute:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->minute:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_17

    iget v0, v11, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_17

    .line 909
    const/4 v13, -0x1

    .line 910
    goto/16 :goto_3

    .line 912
    :cond_17
    move v13, v8

    .line 913
    move-object v5, v4

    .line 914
    goto/16 :goto_3

    .line 917
    :cond_18
    invoke-virtual {v11, v7}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 923
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_19

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 924
    :cond_19
    move v13, v8

    .line 925
    move-object v5, v4

    .line 926
    goto/16 :goto_3

    .line 934
    :cond_1a
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_1b

    invoke-virtual {v6, v12}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 935
    :cond_1b
    move v9, v8

    .line 936
    invoke-virtual {v10, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto/16 :goto_3

    .line 942
    .end local v4           #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    :cond_1c
    if-ltz v13, :cond_1f

    .line 943
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    .line 944
    .restart local v4       #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    iget-boolean v2, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    .line 945
    .local v2, allDay:Z
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 951
    if-eqz v2, :cond_1d

    .line 952
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->hour:I

    .line 953
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->minute:I

    .line 955
    :cond_1d
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v7, Landroid/text/format/Time;->second:I

    .line 963
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/htc/util/calendar/HtcCalendar;->schedularNextEvent(J)V

    .line 1000
    .end local v2           #allDay:Z
    :goto_4
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    if-eqz v18, :cond_1e

    .line 1001
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 1003
    :cond_1e
    const/16 v18, 0x0

    sput-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 965
    .end local v4           #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    :cond_1f
    if-ltz v9, :cond_21

    .line 966
    sget-object v18, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    .line 967
    .restart local v4       #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    iget-wide v0, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 968
    iget-boolean v2, v4, Lcom/htc/util/calendar/HtcCalendar$Appointment;->allday_:Z

    .line 973
    .restart local v2       #allDay:Z
    if-eqz v2, :cond_20

    .line 974
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->hour:I

    .line 975
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->minute:I

    .line 977
    :cond_20
    const/16 v18, 0x3b

    move/from16 v0, v18

    iput v0, v6, Landroid/text/format/Time;->second:I

    .line 985
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/htc/util/calendar/HtcCalendar;->schedularNextEvent(J)V

    goto :goto_4

    .line 996
    .end local v2           #allDay:Z
    .end local v4           #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    :cond_21
    const-wide/16 v18, -0x1

    invoke-static/range {v18 .. v19}, Lcom/htc/util/calendar/HtcCalendar;->schedularNextEvent(J)V

    .line 997
    const/4 v4, 0x0

    .restart local v4       #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    goto :goto_4
.end method

.method private static queryToday(Landroid/text/format/Time;)I
    .locals 16
    .parameter "begin"

    .prologue
    .line 303
    move-object/from16 v12, p0

    .line 305
    .local v12, queryBegin:Landroid/text/format/Time;
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 306
    .local v13, queryEnd:Landroid/text/format/Time;
    iget v0, v12, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    .line 307
    iget v0, v12, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    .line 308
    iget v0, v12, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    .line 309
    const/16 v0, 0x17

    iput v0, v13, Landroid/text/format/Time;->hour:I

    .line 310
    const/16 v0, 0x3b

    iput v0, v13, Landroid/text/format/Time;->minute:I

    .line 311
    const/4 v0, 0x0

    iput v0, v13, Landroid/text/format/Time;->second:I

    .line 318
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 319
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 320
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 322
    const/4 v3, 0x0

    .line 325
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 326
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 327
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 328
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 329
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v14, 0x0

    cmp-long v0, v4, v14

    if-nez v0, :cond_3

    .line 331
    const-string v3, "visible=1"

    .line 347
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :goto_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 357
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 359
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 360
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 361
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x1

    invoke-static {v7, v12, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 364
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 366
    const/4 v7, 0x0

    .line 369
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 334
    .end local v7           #c:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 336
    :cond_4
    const-string v3, "("

    .line 337
    const/4 v11, 0x1

    .line 338
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 339
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 342
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 347
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 349
    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method public static final queryTodayOnly(Landroid/content/Context;J)Lcom/htc/util/calendar/HtcCalendar$Appointment;
    .locals 13
    .parameter "context"
    .parameter "selectedId"

    .prologue
    .line 614
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v9

    const/4 v10, 0x4

    if-lt v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_0
    sput-boolean v9, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    .line 615
    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 617
    if-nez p0, :cond_1

    .line 618
    const/4 v2, 0x0

    .line 670
    :goto_1
    return-object v2

    .line 614
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 621
    :cond_1
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v9, :cond_2

    .line 622
    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    .line 624
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sput-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 626
    const/4 v0, 0x0

    .line 627
    .local v0, count:I
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 630
    .local v7, queryBegin:Landroid/text/format/Time;
    const/4 v6, 0x0

    .line 631
    .local v6, onlytoday:Z
    if-nez v0, :cond_3

    .line 632
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->year:I

    iput v9, v7, Landroid/text/format/Time;->year:I

    .line 633
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->month:I

    iput v9, v7, Landroid/text/format/Time;->month:I

    .line 634
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->monthDay:I

    iput v9, v7, Landroid/text/format/Time;->monthDay:I

    .line 635
    const/4 v9, 0x0

    iput v9, v7, Landroid/text/format/Time;->hour:I

    .line 636
    const/4 v9, 0x0

    iput v9, v7, Landroid/text/format/Time;->minute:I

    .line 637
    const/4 v9, 0x0

    iput v9, v7, Landroid/text/format/Time;->second:I

    .line 638
    invoke-static {v7}, Lcom/htc/util/calendar/HtcCalendar;->queryToday(Landroid/text/format/Time;)I

    move-result v0

    .line 640
    if-lez v0, :cond_3

    .line 641
    const/4 v6, 0x1

    .line 644
    :cond_3
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 645
    .local v3, eventBegin:Landroid/text/format/Time;
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 647
    .local v4, eventEnd:Landroid/text/format/Time;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 648
    .local v8, tnow:Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 651
    const/4 v2, 0x0

    .line 652
    .local v2, e_:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v0, :cond_5

    .line 653
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;

    .line 654
    .local v1, e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    invoke-virtual {v3, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 655
    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    invoke-virtual {v4, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 657
    if-eqz v6, :cond_4

    .line 658
    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->end_:J

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_4

    iget-wide v9, v1, Lcom/htc/util/calendar/HtcCalendar$Appointment;->begin_:J

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    .line 659
    move-object v2, v1

    .line 652
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 665
    .end local v1           #e:Lcom/htc/util/calendar/HtcCalendar$Appointment;
    :cond_5
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    .line 666
    sget-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 668
    :cond_6
    const/4 v9, 0x0

    sput-object v9, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1
.end method

.method private static queryTomorrow(Landroid/text/format/Time;)I
    .locals 16
    .parameter "begin"

    .prologue
    .line 373
    move-object/from16 v12, p0

    .line 375
    .local v12, queryBegin:Landroid/text/format/Time;
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 376
    .local v13, queryEnd:Landroid/text/format/Time;
    iget v0, v12, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    .line 377
    iget v0, v12, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    .line 378
    iget v0, v12, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    .line 379
    const/16 v0, 0x17

    iput v0, v13, Landroid/text/format/Time;->hour:I

    .line 380
    const/16 v0, 0x3b

    iput v0, v13, Landroid/text/format/Time;->minute:I

    .line 381
    const/4 v0, 0x0

    iput v0, v13, Landroid/text/format/Time;->second:I

    .line 389
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 390
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 391
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 393
    const/4 v3, 0x0

    .line 396
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 397
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 398
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 399
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 400
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v14, 0x0

    cmp-long v0, v4, v14

    if-nez v0, :cond_3

    .line 402
    const-string v3, "visible=1"

    .line 418
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :goto_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 428
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 430
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 431
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 432
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x1

    invoke-static {v7, v12, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 435
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 436
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 437
    const/4 v7, 0x0

    .line 439
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 405
    .end local v7           #c:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 407
    :cond_4
    const-string v3, "("

    .line 408
    const/4 v11, 0x1

    .line 409
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 410
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 414
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 413
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 418
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 420
    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method private static queryWeek(Landroid/text/format/Time;)I
    .locals 17
    .parameter "begin"

    .prologue
    .line 443
    move-object/from16 v13, p0

    .line 445
    .local v13, queryBegin:Landroid/text/format/Time;
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 446
    .local v14, queryEnd:Landroid/text/format/Time;
    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    .line 447
    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    .line 448
    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x5

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 449
    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 450
    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 451
    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 452
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 456
    .local v12, julian_day:I
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 457
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 458
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 460
    const/4 v3, 0x0

    .line 463
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 464
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 465
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 466
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 467
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_3

    .line 468
    const-string v3, "visible=1"

    .line 484
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    :goto_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 492
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 494
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 495
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 496
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x1

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 499
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 500
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 501
    const/4 v7, 0x0

    .line 503
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 471
    .end local v7           #c:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 473
    :cond_4
    const-string v3, "("

    .line 474
    const/4 v11, 0x1

    .line 475
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 476
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_5

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 480
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 479
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 484
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 486
    :cond_6
    const-string v3, "visible=1"

    goto/16 :goto_1
.end method

.method public static final queryWeekEvent(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 17
    .parameter "context"
    .parameter "selectedId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/HtcCalendar$Appointment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1019
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->getSenseVersion()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    .line 1020
    sput-wide p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 1022
    if-nez p0, :cond_1

    .line 1023
    const/4 v0, 0x0

    .line 1100
    :goto_1
    return-object v0

    .line 1019
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1026
    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1027
    sput-object p0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    .line 1030
    :cond_2
    invoke-static {}, Lcom/htc/util/calendar/HtcCalendar;->goToToday()V

    .line 1031
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 1033
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 1034
    .local v13, queryBegin:Landroid/text/format/Time;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    iput v0, v13, Landroid/text/format/Time;->year:I

    .line 1035
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    iput v0, v13, Landroid/text/format/Time;->month:I

    .line 1036
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, v13, Landroid/text/format/Time;->monthDay:I

    .line 1037
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iput v0, v13, Landroid/text/format/Time;->hour:I

    .line 1038
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    iput v0, v13, Landroid/text/format/Time;->minute:I

    .line 1039
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    iput v0, v13, Landroid/text/format/Time;->second:I

    .line 1041
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 1042
    .local v14, queryEnd:Landroid/text/format/Time;
    iget v0, v13, Landroid/text/format/Time;->year:I

    iput v0, v14, Landroid/text/format/Time;->year:I

    .line 1043
    iget v0, v13, Landroid/text/format/Time;->month:I

    iput v0, v14, Landroid/text/format/Time;->month:I

    .line 1044
    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x7

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 1045
    const/16 v0, 0x17

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 1046
    const/16 v0, 0x3b

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 1047
    const/4 v0, 0x0

    iput v0, v14, Landroid/text/format/Time;->second:I

    .line 1048
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    iget-wide v4, v14, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 1052
    .local v12, julian_day:I
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 1053
    .local v6, builder:Landroid/net/Uri$Builder;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1054
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1056
    const/4 v3, 0x0

    .line 1059
    .local v3, selection:Ljava/lang/String;
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendar;->bSense21:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1060
    sget-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 1061
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 1062
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    .line 1063
    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    const-wide/16 v15, 0x0

    cmp-long v0, v4, v15

    if-nez v0, :cond_6

    .line 1065
    const-string v3, "visible=1"

    .line 1081
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    :goto_3
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/util/calendar/HtcCalendar;->INSTANCES_PROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1089
    .local v7, c:Landroid/database/Cursor;
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1091
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1092
    sget-object v8, Lcom/htc/util/calendar/HtcCalendar$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

    .line 1093
    .local v8, category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    const/4 v0, 0x0

    invoke-static {v7, v13, v8, v0}, Lcom/htc/util/calendar/HtcCalendar;->queryDayEvents(Landroid/database/Cursor;Landroid/text/format/Time;Lcom/htc/util/calendar/HtcCalendar$EventCategory;Z)V

    .line 1096
    .end local v8           #category:Lcom/htc/util/calendar/HtcCalendar$EventCategory;
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1097
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1098
    const/4 v7, 0x0

    .line 1100
    :cond_5
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1068
    .end local v7           #c:Landroid/database/Cursor;
    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v4, Lcom/htc/util/calendar/HtcCalendar;->mSelectedId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1070
    :cond_7
    const-string v3, "("

    .line 1071
    const/4 v11, 0x1

    .line 1072
    .local v11, index:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1073
    .local v9, i:I
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v11, v0, :cond_8

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1077
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1076
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "calendar_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 1081
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #index:I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1083
    :cond_9
    const-string v3, "visible=1"

    goto/16 :goto_3
.end method

.method private static schedularNextEvent(J)V
    .locals 6
    .parameter "eventTime"

    .prologue
    const/4 v5, 0x0

    .line 572
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 573
    .local v0, next:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 574
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 575
    iput v5, v0, Landroid/text/format/Time;->hour:I

    .line 576
    iput v5, v0, Landroid/text/format/Time;->minute:I

    .line 577
    iput v5, v0, Landroid/text/format/Time;->second:I

    .line 579
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-gez v3, :cond_1

    .line 580
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide p0

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 584
    .local v1, t:J
    cmp-long v3, v1, p0

    if-gez v3, :cond_0

    .line 585
    move-wide p0, v1

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1214
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1215
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1216
    :cond_0
    sput-object v1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    .line 1218
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1219
    sget-object v0, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1220
    :cond_1
    sput-object v1, Lcom/htc/util/calendar/HtcCalendar;->mAppointmentList:Ljava/util/ArrayList;

    .line 1222
    sput-object v1, Lcom/htc/util/calendar/HtcCalendar;->mContext:Landroid/content/Context;

    .line 1223
    return-void
.end method

.method public setSelectedList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1207
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sput-object p1, Lcom/htc/util/calendar/HtcCalendar;->mSelectedList:Ljava/util/ArrayList;

    .line 1208
    return-void
.end method
