.class public Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
.super Ljava/lang/Object;
.source "VCalendarUtils.java"

# interfaces
.implements Lcom/htc/util/calendar/vcalendar/HashItem;


# static fields
.field public static final REMINDERS_PROJECTION:[Ljava/lang/String; = null

.field public static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=%d AND (method=1 OR method=0)"

.field private static final RULE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "VCalendarUtils"

.field private static final VBEGIN:Ljava/lang/String; = "BEGIN:VCALENDAR"

.field private static final VEND:Ljava/lang/String; = "END:VCALENDAR"

.field private static final default_charset:Ljava/lang/String; = "UTF-8"

.field static final weekDayAry:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final weekDays:[Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field public final WKST:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field public alarm:J

.field public categories:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public dtEnd:Landroid/text/format/Time;

.field public dtStart:Landroid/text/format/Time;

.field public duration:Ljava/lang/String;

.field public exDate:Ljava/lang/String;

.field public exRule:Ljava/lang/String;

.field public hasAlarm:Z

.field public isAllDay:Z

.field public last_update_time:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field private mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field public priority:Ljava/lang/String;

.field public rDate:Ljava/lang/String;

.field public rRule:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public strAlarm:Ljava/lang/String;

.field public strDTEnd:Ljava/lang/String;

.field public strDTStart:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field private vCalendar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "method"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    .line 105
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "SU"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "MO"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "TU"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "WE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "TH"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "FR"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "SA"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SU"

    aput-object v1, v0, v3

    const-string v1, "MO"

    aput-object v1, v0, v4

    const-string v1, "TU"

    aput-object v1, v0, v5

    const-string v1, "WE"

    aput-object v1, v0, v6

    const-string v1, "TH"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDays:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "SU"

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->WKST:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "c"
    .parameter "uniEventUri"

    .prologue
    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "SU"

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->WKST:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 1
    .parameter "eventCur"
    .parameter "c"

    .prologue
    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "SU"

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->WKST:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->init(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method private checkMonthDayWithOffset(ILandroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "dayOffset"
    .parameter "dbStartTime"
    .parameter "monthDay"

    .prologue
    const/4 v6, 0x4

    .line 1611
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1612
    .local v1, nDay:I
    invoke-virtual {p2, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    .line 1613
    .local v0, MAX_DAY:I
    add-int v2, v1, p1

    .line 1615
    .local v2, tempDay:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAX_DAY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dbStartTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1619
    sub-int v3, v2, v0

    if-lez v3, :cond_1

    .line 1621
    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v3, 0x1

    .line 1637
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> nDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1638
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1622
    :cond_1
    if-nez v2, :cond_3

    .line 1624
    iget v3, p2, Landroid/text/format/Time;->month:I

    if-nez v3, :cond_2

    .line 1625
    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    const/16 v4, 0xb

    iget v5, p2, Landroid/text/format/Time;->year:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p2, Landroid/text/format/Time;->year:I

    invoke-virtual {p2, v3, v4, v5}, Landroid/text/format/Time;->set(III)V

    .line 1629
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1630
    invoke-virtual {p2, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v1

    goto :goto_0

    .line 1627
    :cond_2
    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    iget v4, p2, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p2, Landroid/text/format/Time;->month:I

    iget v5, p2, Landroid/text/format/Time;->year:I

    invoke-virtual {p2, v3, v4, v5}, Landroid/text/format/Time;->set(III)V

    goto :goto_1

    .line 1631
    :cond_3
    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v3, p1

    if-eq v1, v3, :cond_0

    .line 1635
    move v1, v2

    goto :goto_0
.end method

.method private checkMonthWithOffset(ILandroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "dayOffset"
    .parameter "dbStartTime"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    .line 1642
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1643
    .local v2, nMonth:I
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1645
    .local v1, nDay:I
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    .line 1646
    .local v0, MAX_DAY:I
    add-int v3, v1, p1

    .line 1648
    .local v3, tempDay:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nMonth, nDay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1649
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MAX_DAY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1650
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tempDay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1652
    sub-int v4, v3, v0

    if-lez v4, :cond_1

    .line 1654
    sub-int v4, v3, v0

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v1, v4, 0x1

    .line 1655
    add-int/lit8 v2, v2, 0x1

    .line 1657
    const/16 v4, 0xc

    if-le v2, v4, :cond_0

    .line 1658
    const/4 v2, 0x1

    .line 1668
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> nMonth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1669
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1660
    :cond_1
    if-gtz v3, :cond_0

    .line 1662
    add-int/lit8 v2, v2, -0x1

    .line 1664
    if-gtz v2, :cond_0

    .line 1665
    const/16 v2, 0xc

    goto :goto_0
.end method

.method private checkTimeObj(Ljava/lang/String;)Z
    .locals 8
    .parameter "strTime"

    .prologue
    const/16 v7, 0x3b

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1673
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check time obj - Date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1675
    const/4 v0, 0x0

    .line 1676
    .local v0, bHaveZ:Z
    const/4 v1, 0x1

    .line 1678
    .local v1, bInUTC:Z
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1679
    .local v2, t:Landroid/text/format/Time;
    invoke-virtual {v2, p1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-result v1

    .line 1681
    const-string v5, "Z"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1683
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bHaveZ:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bInUTC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1684
    if-nez v1, :cond_0

    if-nez v0, :cond_a

    .line 1685
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t year "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->year:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t month "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1689
    iget v5, v2, Landroid/text/format/Time;->month:I

    if-ltz v5, :cond_1

    iget v5, v2, Landroid/text/format/Time;->month:I

    const/16 v6, 0xb

    if-le v5, v6, :cond_2

    .line 1690
    :cond_1
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "month out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :goto_0
    return v3

    .line 1694
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t monthDay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1696
    iget v5, v2, Landroid/text/format/Time;->monthDay:I

    if-lt v5, v4, :cond_3

    iget v5, v2, Landroid/text/format/Time;->monthDay:I

    const/16 v6, 0x1f

    if-le v5, v6, :cond_4

    .line 1697
    :cond_3
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "monthDay out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1701
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t hour "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1703
    iget v5, v2, Landroid/text/format/Time;->hour:I

    if-ltz v5, :cond_5

    iget v5, v2, Landroid/text/format/Time;->hour:I

    const/16 v6, 0x17

    if-le v5, v6, :cond_6

    .line 1704
    :cond_5
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hour out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1708
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t minute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1710
    iget v5, v2, Landroid/text/format/Time;->minute:I

    if-ltz v5, :cond_7

    iget v5, v2, Landroid/text/format/Time;->minute:I

    if-le v5, v7, :cond_8

    .line 1711
    :cond_7
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minute out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1715
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t second "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->second:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1717
    iget v5, v2, Landroid/text/format/Time;->second:I

    if-ltz v5, :cond_9

    iget v5, v2, Landroid/text/format/Time;->second:I

    if-le v5, v7, :cond_b

    .line 1718
    :cond_9
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "second out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->second:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1722
    :cond_a
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    move v3, v4

    .line 1725
    goto/16 :goto_0
.end method

.method private checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 2
    .parameter "strDTStart"
    .parameter "eventTime"

    .prologue
    .line 1748
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 1749
    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/text/format/Time;->allDay:Z

    .line 1751
    :cond_0
    return-void
.end method

.method private checkTimeUTC(Ljava/lang/String;)Z
    .locals 3
    .parameter "strTime"

    .prologue
    .line 1837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check time UTC - Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1838
    const/4 v0, 0x0

    .line 1839
    .local v0, bHaveZ:Z
    const-string v1, "Z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1840
    return v0
.end method

.method private checkWeekDayWithOffset(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dayOffset"
    .parameter "weekDay"

    .prologue
    .line 1592
    const/4 v1, 0x0

    .line 1594
    .local v1, nIdx:I
    :try_start_0
    sget-object v2, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1598
    :goto_0
    const-string v2, "VCalendarUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dayOffset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " weekDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nIdx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    add-int/2addr v1, p1

    .line 1601
    if-gez v1, :cond_1

    .line 1602
    const/4 v1, 0x6

    .line 1606
    :cond_0
    :goto_1
    const-string v2, "VCalendarUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nIdx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    sget-object v2, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDays:[Ljava/lang/String;

    aget-object v2, v2, v1

    return-object v2

    .line 1595
    :catch_0
    move-exception v0

    .line 1596
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VCalendarUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkWeekDayWithOffset : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1603
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    .line 1604
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 560
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    .line 561
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    .line 562
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    .line 563
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    .line 564
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    .line 565
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    .line 566
    iput-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    .line 567
    iput-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    .line 568
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    .line 569
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 570
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 571
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 572
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 573
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    .line 574
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    .line 575
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 576
    return-void
.end method

.method private static convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;
    .locals 1
    .parameter "time"

    .prologue
    .line 1460
    const-string v0, "%Y%m%dT%H%M00Z"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1732
    return-void
.end method

.method private static escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "unescaped"

    .prologue
    .line 1784
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1785
    const-string v4, ""

    .line 1829
    :goto_0
    return-object v4

    .line 1788
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1789
    .local v3, tmpBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1790
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1791
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1792
    .local v0, ch:C
    const v4, 0xff0d

    if-ne v0, v4, :cond_1

    .line 1793
    const/16 v0, 0x2d

    .line 1796
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 1824
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1790
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1798
    :sswitch_0
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1799
    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1820
    :sswitch_1
    const-string v4, "\\\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1829
    .end local v0           #ch:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1796
    nop

    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private static extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;
    .locals 3
    .parameter "recurrence"

    .prologue
    .line 266
    if-nez p0, :cond_0

    .line 267
    const/4 v1, 0x0

    .line 273
    :goto_0
    return-object v1

    .line 269
    :cond_0
    const-string v1, "TZID"

    invoke-virtual {p0, v1}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v0

    .line 270
    .local v0, tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-eqz v0, :cond_1

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static extractDurationMinutes(Landroid/text/format/Time;)J
    .locals 4
    .parameter "t"

    .prologue
    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static extractDurationMinutes(Ljava/lang/String;)J
    .locals 10
    .parameter "t"

    .prologue
    const/4 v9, -0x1

    .line 325
    const/4 v4, 0x0

    .local v4, pos1:I
    const/4 v5, 0x0

    .line 326
    .local v5, pos2:I
    const/4 v3, 0x0

    .line 327
    .local v3, negative:Z
    const/4 v0, 0x0

    .local v0, day:I
    const/4 v1, 0x0

    .local v1, hour:I
    const/4 v2, 0x0

    .local v2, minute:I
    const/4 v6, 0x0

    .local v6, second:I
    const/4 v7, 0x0

    .line 330
    .local v7, week:I
    const/16 v8, 0x2d

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 331
    const/4 v3, 0x1

    .line 332
    :cond_0
    const/16 v8, 0x50

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 333
    if-ne v4, v9, :cond_2

    .line 372
    :cond_1
    :goto_0
    mul-int/lit8 v8, v1, 0x3c

    add-int/2addr v8, v2

    mul-int/lit8 v9, v0, 0x18

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v8, v9

    int-to-long v8, v8

    return-wide v8

    .line 337
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 339
    const/16 v8, 0x44

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 340
    if-eq v5, v9, :cond_3

    .line 341
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 344
    :cond_3
    const/16 v8, 0x54

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 345
    if-eq v5, v9, :cond_6

    .line 346
    add-int/lit8 v4, v5, 0x1

    .line 347
    const/16 v8, 0x48

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 348
    if-eq v5, v9, :cond_4

    .line 349
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 350
    add-int/lit8 v4, v5, 0x1

    .line 352
    :cond_4
    const/16 v8, 0x4d

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 353
    if-eq v5, v9, :cond_5

    .line 354
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 355
    add-int/lit8 v4, v5, 0x1

    .line 357
    :cond_5
    const/16 v8, 0x53

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 358
    if-eq v5, v9, :cond_6

    .line 359
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 360
    add-int/lit8 v4, v5, 0x1

    .line 364
    :cond_6
    const/16 v8, 0x57

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 365
    if-eq v5, v9, :cond_1

    .line 366
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 367
    mul-int/lit8 v0, v7, 0x7

    goto :goto_0
.end method

.method private static extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "component"
    .parameter "propertyName"

    .prologue
    .line 278
    invoke-static {p0, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString_Impl(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 281
    const/4 v1, 0x0

    .line 289
    :goto_0
    return-object v1

    .line 283
    :cond_0
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    const-string v1, "\\\\"

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 287
    const-string v1, "\\;"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 289
    goto :goto_0
.end method

.method private static extractString_Impl(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "component"
    .parameter "propertyName"

    .prologue
    const/4 v5, 0x0

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v3

    .line 295
    .local v3, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v3, :cond_0

    .line 297
    const-string v6, "ENCODING"

    invoke-virtual {v3, v6}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v2

    .line 298
    .local v2, enc:Lcom/android/calendarcommon/ICalendar$Parameter;
    const-string v6, "CHARSET"

    invoke-virtual {v3, v6}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v0

    .line 301
    .local v0, charSet:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-nez v2, :cond_1

    .line 302
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 321
    .end local v0           #charSet:Lcom/android/calendarcommon/ICalendar$Parameter;
    .end local v2           #enc:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_0
    :goto_0
    return-object v5

    .line 304
    .restart local v0       #charSet:Lcom/android/calendarcommon/ICalendar$Parameter;
    .restart local v2       #enc:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_1
    iget-object v6, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    const-string v7, "QUOTED-PRINTABLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 305
    new-instance v4, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-direct {v4}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>()V

    .line 307
    .local v4, qpdec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    if-nez v0, :cond_2

    .line 308
    :try_start_0
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 316
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #qpdec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :cond_3
    iget-object v6, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    const-string v7, "BASE64"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 317
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private static extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "component"
    .parameter "propertyName"

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v0

    .line 232
    .local v0, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 235
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "component"
    .parameter "name"

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 241
    .local v2, properties:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendarcommon/ICalendar$Property;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 242
    :cond_0
    const/4 v5, 0x0

    .line 262
    :goto_0
    return-object v5

    .line 245
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 246
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendarcommon/ICalendar$Property;

    invoke-virtual {v5}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 249
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 252
    .local v0, first:Z
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendarcommon/ICalendar$Property;

    .line 253
    .local v3, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v0, :cond_3

    .line 254
    const/4 v0, 0x0

    .line 260
    :goto_2
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 258
    :cond_3
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 262
    .end local v3           #property:Lcom/android/calendarcommon/ICalendar$Property;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getDefaultCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1581
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1582
    const-string v0, "Shift_JIS"

    .line 1584
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method private getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 3
    .parameter "t1"
    .parameter "t2"

    .prologue
    .line 1735
    const-string v0, "VCalendarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    const-string v0, "VCalendarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget v0, p1, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-le v0, v1, :cond_0

    .line 1739
    const/4 v0, 0x1

    .line 1743
    :goto_0
    return v0

    .line 1740
    :cond_0
    iget v0, p1, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ge v0, v1, :cond_1

    .line 1741
    const/4 v0, -0x1

    goto :goto_0

    .line 1743
    :cond_1
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iget v1, p2, Landroid/text/format/Time;->yearDay:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPriorityString(I)Ljava/lang/String;
    .locals 1
    .parameter "p"

    .prologue
    .line 596
    packed-switch p1, :pswitch_data_0

    .line 613
    const-string v0, "undefined priority"

    .line 615
    .local v0, result:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 601
    .end local v0           #result:Ljava/lang/String;
    :pswitch_0
    const-string v0, "HIGH"

    .line 602
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 604
    .end local v0           #result:Ljava/lang/String;
    :pswitch_1
    const-string v0, "MEDIUM"

    .line 605
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 610
    .end local v0           #result:Ljava/lang/String;
    :pswitch_2
    const-string v0, "LOW"

    .line 611
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getTimeByYearDay(Landroid/text/format/Time;I)Landroid/text/format/Time;
    .locals 10
    .parameter "t"
    .parameter "yearDay"

    .prologue
    const/4 v9, 0x0

    .line 1754
    iget v5, p1, Landroid/text/format/Time;->year:I

    .line 1755
    .local v5, year:I
    const-string v6, "VCalendarUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTimeByYearDay inWhichYear:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " yearDay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    const/4 v3, 0x0

    .line 1757
    .local v3, inWhichMonth:I
    const/4 v2, 0x0

    .line 1758
    .local v2, inWhichDay:I
    const/4 v0, 0x0

    .line 1760
    .local v0, dayCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v6, 0xc

    if-ge v1, v6, :cond_0

    .line 1761
    move v3, v1

    .line 1762
    const/4 v6, 0x1

    invoke-virtual {p1, v6, v1, v5}, Landroid/text/format/Time;->set(III)V

    .line 1763
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 1764
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    .line 1765
    .local v4, num:I
    add-int/2addr v0, v4

    .line 1766
    if-le v0, p2, :cond_1

    .line 1767
    sub-int v6, v0, v4

    sub-int v2, p2, v6

    .line 1777
    .end local v4           #num:I
    :cond_0
    :goto_1
    const-string v6, "VCalendarUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTimeByYearDay inWhichMonth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " inWhichDay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    invoke-virtual {p1, v2, v3, v5}, Landroid/text/format/Time;->set(III)V

    .line 1779
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 1780
    return-object p1

    .line 1769
    .restart local v4       #num:I
    :cond_1
    if-ne v0, p2, :cond_2

    .line 1770
    move v2, v4

    .line 1771
    goto :goto_1

    .line 1760
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 29
    .parameter "cur"
    .parameter "c"

    .prologue
    .line 1018
    const-wide/16 v11, 0x0

    .line 1021
    .local v11, alldayStart:J
    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1022
    .local v14, colID:I
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1023
    .local v20, id:J
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    .line 1026
    const-string v3, "iCalGUID"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1027
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    .line 1030
    const-string v3, "calendar_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1031
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1034
    .local v13, calID:Ljava/lang/String;
    const-string v3, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1035
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 1036
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1037
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    const-string v5, "\r"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\n"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 1038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->qpEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 1042
    :cond_0
    const-string v3, "allDay"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1043
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    .line 1046
    const-string v3, "dtstart"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1047
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 1048
    .local v23, start:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    .line 1049
    .local v9, __timezone:Ljava/util/TimeZone;
    new-instance v26, Landroid/text/format/Time;

    invoke-direct/range {v26 .. v26}, Landroid/text/format/Time;-><init>()V

    .line 1050
    .local v26, t:Landroid/text/format/Time;
    move-object/from16 v0, v26

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1051
    const-string v3, "UTC"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1052
    const/4 v15, 0x0

    .line 1053
    .local v15, daylightOffset:I
    new-instance v16, Ljava/util/Date;

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1054
    .local v16, dt:Ljava/util/Date;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1055
    invoke-virtual {v9}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v15

    .line 1057
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v3, :cond_3

    .line 1058
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v27, v0

    sub-long v7, v7, v27

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1059
    if-eqz v15, :cond_2

    .line 1060
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    int-to-long v0, v15

    move-wide/from16 v27, v0

    sub-long v7, v7, v27

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1061
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    .line 1063
    :cond_3
    invoke-static/range {v26 .. v26}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    .line 1075
    const-string v3, "dtend"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1076
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1077
    .local v18, end:J
    const-wide/16 v7, 0x0

    cmp-long v3, v18, v7

    if-nez v3, :cond_4

    .line 1078
    const-string v3, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1079
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    .line 1081
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 1082
    .local v25, subDur:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isInteger(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1083
    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    const-wide/16 v27, 0x3e8

    mul-long v7, v7, v27

    add-long v18, v23, v7

    .line 1088
    .end local v25           #subDur:Ljava/lang/String;
    :cond_4
    :goto_1
    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1089
    const-string v3, "UTC"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1090
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v3, :cond_5

    .line 1091
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v27, v0

    sub-long v7, v7, v27

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1092
    if-eqz v15, :cond_5

    .line 1093
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    int-to-long v0, v15

    move-wide/from16 v27, v0

    sub-long v7, v7, v27

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1095
    :cond_5
    invoke-static/range {v26 .. v26}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    .line 1112
    const-string v3, "hasAlarm"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1113
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    .line 1114
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    if-eqz v3, :cond_8

    .line 1115
    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 1116
    .local v4, uri:Landroid/net/Uri;
    const-string v3, "event_id=%d AND (method=1 OR method=0)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1117
    .local v6, where:Ljava/lang/String;
    const/16 v22, 0x0

    .line 1119
    .local v22, reminderCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1120
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1121
    const-string v3, "minutes"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1122
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v3, :cond_e

    .line 1123
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const v5, 0xea60

    mul-int/2addr v3, v5

    int-to-long v7, v3

    sub-long v7, v11, v7

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    .line 1126
    :goto_3
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1127
    .local v10, alarmTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    invoke-virtual {v10, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1128
    const-string v3, "UTC"

    invoke-virtual {v10, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1129
    invoke-static {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1132
    .end local v10           #alarmTime:Landroid/text/format/Time;
    :cond_6
    if-eqz v22, :cond_8

    .line 1133
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1134
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1136
    :cond_7
    const/16 v22, 0x0

    .line 1142
    .end local v4           #uri:Landroid/net/Uri;
    .end local v6           #where:Ljava/lang/String;
    .end local v22           #reminderCursor:Landroid/database/Cursor;
    :cond_8
    const-string v3, "description"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1143
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    const-string v5, "\r"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\n"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->qpEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1150
    :cond_9
    const-string v3, "eventLocation"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1151
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 1152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 1153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    const-string v5, "\r"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\n"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 1154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->qpEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 1158
    :cond_a
    const-string v3, "eventTimezone"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1159
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    .line 1162
    const-string v3, "rrule"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1163
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 1164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->RRule_ICalToVCal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 1167
    const-string v3, "rdate"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1168
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    .line 1171
    const-string v3, "exrule"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1172
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    .line 1175
    const-string v3, "exdate"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1176
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 1179
    const-string v3, "last_update_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1180
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    .line 1181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    const-string v5, "T"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    const-string v5, "Z"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_b

    .line 1183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, " "

    const-string v8, "T"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Z"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    .line 1186
    :cond_b
    return-void

    .line 1043
    .end local v9           #__timezone:Ljava/util/TimeZone;
    .end local v15           #daylightOffset:I
    .end local v16           #dt:Ljava/util/Date;
    .end local v18           #end:J
    .end local v23           #start:J
    .end local v26           #t:Landroid/text/format/Time;
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1084
    .restart local v9       #__timezone:Ljava/util/TimeZone;
    .restart local v15       #daylightOffset:I
    .restart local v16       #dt:Ljava/util/Date;
    .restart local v18       #end:J
    .restart local v23       #start:J
    .restart local v26       #t:Landroid/text/format/Time;
    :catch_0
    move-exception v17

    .line 1085
    .local v17, e:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1113
    .end local v17           #e:Ljava/lang/Exception;
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1125
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v6       #where:Ljava/lang/String;
    .restart local v22       #reminderCursor:Landroid/database/Cursor;
    :cond_e
    :try_start_2
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const v5, 0xea60

    mul-int/2addr v3, v5

    int-to-long v7, v3

    sub-long v7, v23, v7

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 1132
    :catchall_0
    move-exception v3

    if-eqz v22, :cond_10

    .line 1133
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1134
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1136
    :cond_f
    const/16 v22, 0x0

    :cond_10
    throw v3
.end method

.method private init(Ljava/lang/String;)Z
    .locals 13
    .parameter "vCalRawData"

    .prologue
    const/4 v12, -0x1

    .line 176
    move-object v6, p1

    .line 177
    .local v6, rawData:Ljava/lang/String;
    const/4 v4, 0x0

    .line 178
    .local v4, nestCount:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v9, vCalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const-string v10, "BEGIN:VCALENDAR"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 181
    .local v2, nBegin:I
    const-string v10, "END:VCALENDAR"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 182
    .local v3, nEnd:I
    if-eq v12, v2, :cond_0

    if-ne v12, v3, :cond_1

    .line 196
    :cond_0
    const/4 v7, 0x0

    .line 197
    .local v7, results:Z
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 198
    .local v8, s:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->initLocked(Ljava/lang/String;)Z

    move-result v5

    .line 199
    .local v5, oneResult:Z
    const-string v10, "VCalendarUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMPORT-->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 185
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #oneResult:Z
    .end local v7           #results:Z
    .end local v8           #s:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    const-string v11, "END:VCALENDAR"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, body:Ljava/lang/String;
    const-string v10, "END:VCALENDAR"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 192
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v4, v4, 0x1

    .line 194
    goto :goto_0

    .line 202
    .end local v0           #body:Ljava/lang/String;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v7       #results:Z
    :cond_2
    const/4 v10, 0x1

    return v10
.end method

.method private initLocked(Ljava/lang/String;)Z
    .locals 7
    .parameter "vCalRawData"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 207
    const-string v5, "BEGIN:VCALENDAR"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 208
    .local v2, nBegin:I
    const-string v5, "END:VCALENDAR"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 209
    .local v3, nEnd:I
    if-eq v6, v2, :cond_0

    if-ne v6, v3, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v4

    .line 212
    :cond_1
    const-string v5, "END:VCALENDAR"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    .line 217
    :try_start_0
    iget-object v5, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/calendarcommon/ICalendar;->parseCalendar(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;
    :try_end_0
    .catch Lcom/android/calendarcommon/ICalendar$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    .local v0, cal:Lcom/android/calendarcommon/ICalendar$Component;
    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 226
    invoke-direct {p0, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->setEventValues(Lcom/android/calendarcommon/ICalendar$Component;)Z

    move-result v4

    goto :goto_0

    .line 218
    .end local v0           #cal:Lcom/android/calendarcommon/ICalendar$Component;
    :catch_0
    move-exception v1

    .line 219
    .local v1, fe:Lcom/android/calendarcommon/ICalendar$FormatException;
    goto :goto_0
.end method

.method private isInteger(Ljava/lang/String;)Z
    .locals 3
    .parameter "s"

    .prologue
    .line 1005
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1006
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1008
    .local v0, ch:C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    .line 1009
    :cond_0
    const/4 v2, 0x0

    .line 1013
    .end local v0           #ch:C
    :goto_1
    return v2

    .line 1005
    .restart local v0       #ch:C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1013
    .end local v0           #ch:C
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isNullContentValues(Landroid/content/ContentValues;)Z
    .locals 3
    .parameter "cv"

    .prologue
    const/4 v1, 0x1

    .line 160
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v0, nullCv:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 163
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSBM()Z
    .locals 2

    .prologue
    .line 1833
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static qpEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 1563
    const/4 v2, 0x0

    .line 1565
    .local v2, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1566
    invoke-static {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1570
    :cond_0
    new-instance v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/lang/String;)V

    .line 1572
    .local v1, qpcodec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :try_start_0
    invoke-virtual {v1, p0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1577
    :goto_0
    return-object v2

    .line 1573
    :catch_0
    move-exception v0

    .line 1574
    .local v0, e:Lorg/apache/commons/codec/EncoderException;
    invoke-virtual {v0}, Lorg/apache/commons/codec/EncoderException;->printStackTrace()V

    goto :goto_0
.end method

.method private setDtStart(Ljava/lang/String;)Z
    .locals 3
    .parameter "val"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    .line 381
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    .line 383
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeObj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 390
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 386
    :cond_0
    const-string v0, "VCalendarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strDTStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEventValues(Lcom/android/calendarcommon/ICalendar$Component;)Z
    .locals 15
    .parameter "cal"

    .prologue
    .line 396
    const/4 v5, 0x0

    .line 398
    .local v5, isEvent:Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendarcommon/ICalendar$Component;

    .line 399
    .local v1, component:Lcom/android/calendarcommon/ICalendar$Component;
    invoke-direct {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->clear()V

    .line 400
    const-string v10, "VEVENT"

    invoke-virtual {v1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "VTODO"

    invoke-virtual {v1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 402
    :cond_1
    const-string v10, "VEVENT"

    invoke-virtual {v1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 404
    const-string v10, "UID"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    .line 405
    const-string v10, "DTSTART"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 407
    .local v8, val:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 409
    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->setDtStart(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 422
    :cond_2
    const-string v10, "DTEND"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 424
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 425
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    .line 426
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    .line 428
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeObj(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 429
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 444
    :cond_3
    :goto_1
    const-string v10, "AALARM"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 445
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 446
    const-string v10, ";"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 447
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    .line 448
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 450
    .local v0, alarmTime:Landroid/text/format/Time;
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeObj(Ljava/lang/String;)Z

    move-result v9

    .line 451
    .local v9, validAlarmTime:Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "validAlarmTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 452
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 454
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xea60

    div-long/2addr v10, v12

    iput-wide v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    .line 456
    iget-wide v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_b

    if-eqz v9, :cond_b

    .line 457
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    .line 466
    .end local v0           #alarmTime:Landroid/text/format/Time;
    .end local v9           #validAlarmTime:Z
    :goto_2
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-nez v10, :cond_d

    .line 467
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    .line 481
    :goto_3
    iget-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v10, :cond_11

    .line 483
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->hour:I

    const/16 v11, 0xb

    if-le v10, v11, :cond_10

    .line 484
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    rsub-int/lit8 v13, v13, 0x18

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 485
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    rsub-int/lit8 v13, v13, 0x18

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 490
    :goto_4
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const-string v11, "UTC"

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 491
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const-string v11, "UTC"

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 492
    const-string v10, "UTC"

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    .line 497
    :goto_5
    const-string v10, "DURATION"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 498
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 499
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    .line 507
    :goto_6
    const-string v10, "LOCATION"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 508
    const-string v10, "SUMMARY"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 509
    const-string v10, "DESCRIPTION"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 511
    const-string v10, "CATEGORIES"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 512
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 513
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->categories:Ljava/lang/String;

    .line 515
    :cond_4
    const-string v10, "CLASS"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 516
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 517
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->type:Ljava/lang/String;

    .line 519
    :cond_5
    const-string v10, "STATUS"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 520
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 521
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    .line 522
    :cond_6
    const-string v10, "PRIORITY"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 523
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 524
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getPriorityString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->priority:Ljava/lang/String;

    .line 526
    :cond_7
    const-string v10, "RRULE"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 527
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->RRule_VCalToICal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 529
    const-string v10, "RDATE"

    invoke-virtual {v1, v10}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    .line 530
    const-string v10, "EXRULE"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    .line 531
    const-string v10, "EXDATE"

    invoke-virtual {v1, v10}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 535
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getEventCV()Landroid/content/ContentValues;

    move-result-object v2

    .line 537
    .local v2, cv:Landroid/content/ContentValues;
    invoke-direct {p0, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isNullContentValues(Landroid/content/ContentValues;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 538
    if-eqz v5, :cond_13

    .line 539
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getAlarmCV()Landroid/content/ContentValues;

    move-result-object v2

    .line 541
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 553
    .end local v1           #component:Lcom/android/calendarcommon/ICalendar$Component;
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #val:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 554
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "VCalendarUtils"

    const-string v11, "Error when set event values."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    const/4 v10, 0x0

    .line 557
    .end local v3           #e:Ljava/lang/Exception;
    :goto_7
    return v10

    .line 413
    .restart local v1       #component:Lcom/android/calendarcommon/ICalendar$Component;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v8       #val:Ljava/lang/String;
    :cond_8
    if-nez v5, :cond_2

    .line 414
    :try_start_1
    const-string v10, "DUE"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 415
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 417
    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->setDtStart(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_0

    .line 431
    :cond_9
    const-string v10, "VCalendarUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "strDTEnd: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " error"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 438
    :cond_a
    if-nez v5, :cond_3

    .line 439
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    .line 440
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1

    .line 459
    .restart local v0       #alarmTime:Landroid/text/format/Time;
    .restart local v9       #validAlarmTime:Z
    :cond_b
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    goto/16 :goto_2

    .line 462
    .end local v0           #alarmTime:Landroid/text/format/Time;
    .end local v9           #validAlarmTime:Z
    :cond_c
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    goto/16 :goto_2

    .line 468
    :cond_d
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->hour:I

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->minute:I

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->second:I

    if-nez v10, :cond_e

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v10

    if-nez v10, :cond_e

    .line 473
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    goto/16 :goto_3

    .line 474
    :cond_e
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_f

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v10

    if-nez v10, :cond_f

    if-eqz v5, :cond_f

    .line 476
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    goto/16 :goto_3

    .line 478
    :cond_f
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    goto/16 :goto_3

    .line 487
    :cond_10
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 488
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_4

    .line 494
    :cond_11
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    goto/16 :goto_5

    .line 501
    :cond_12
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12

    .line 503
    .local v6, mDur:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "P"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "S"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    goto/16 :goto_6

    .line 543
    .end local v6           #mDur:J
    .restart local v2       #cv:Landroid/content/ContentValues;
    :cond_13
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getAlarmCV()Landroid/content/ContentValues;

    move-result-object v2

    .line 545
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 557
    .end local v1           #component:Lcom/android/calendarcommon/ICalendar$Component;
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v8           #val:Ljava/lang/String;
    :cond_14
    const/4 v10, 0x1

    goto/16 :goto_7
.end method


# virtual methods
.method MatchMonth(Ljava/lang/String;)Z
    .locals 5
    .parameter "month"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 927
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0xc

    if-gt v3, v4, :cond_0

    .line 932
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 930
    goto :goto_0

    .line 931
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 932
    goto :goto_0
.end method

.method MatchMonthDay(Ljava/lang/String;)Z
    .locals 5
    .parameter "monthday"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 916
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    .line 921
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 919
    goto :goto_0

    .line 920
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 921
    goto :goto_0
.end method

.method MatchWeekDay(Ljava/lang/String;)Z
    .locals 2
    .parameter "weekday"

    .prologue
    const/4 v0, 0x1

    .line 896
    const-string v1, "MO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 911
    :cond_0
    :goto_0
    return v0

    .line 898
    :cond_1
    const-string v1, "TU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 900
    const-string v1, "WE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 902
    const-string v1, "TH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 904
    const-string v1, "FR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 906
    const-string v1, "SA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 908
    const-string v1, "SU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 911
    const/4 v0, 0x0

    goto :goto_0
.end method

.method MatchYearDay(Ljava/lang/String;)Z
    .locals 5
    .parameter "yearDay"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 938
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x16e

    if-gt v3, v4, :cond_0

    .line 943
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 941
    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 943
    goto :goto_0
.end method

.method RRule_ICalToVCal(Ljava/lang/String;)Ljava/lang/String;
    .locals 36
    .parameter "rrule"

    .prologue
    .line 1189
    if-nez p1, :cond_0

    .line 1190
    const/16 v26, 0x0

    .line 1456
    :goto_0
    return-object v26

    .line 1192
    :cond_0
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "RRule_ICalToVCal: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    .line 1194
    .local v25, result:Ljava/lang/StringBuffer;
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v5, v0, [Ljava/lang/String;

    .line 1195
    .local v5, array:[Ljava/lang/String;
    const/16 v31, 0x0

    .line 1196
    .local v31, tempstr:Ljava/lang/String;
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1197
    .local v30, temparr:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 1198
    .local v17, freq:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1199
    .local v20, interval:Ljava/lang/String;
    const/16 v32, 0x0

    .line 1200
    .local v32, until:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1201
    .local v13, count:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    .local v8, byday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    .local v10, bymonthday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .local v9, bymonth:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1206
    .local v11, bysetpos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v33, "FREQ"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-gez v33, :cond_1

    .line 1207
    const/16 v26, 0x0

    goto :goto_0

    .line 1209
    :cond_1
    const-string v33, ";"

    const/16 v34, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 1211
    const/4 v7, 0x0

    .line 1213
    .local v7, bYDMode:Z
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    array-length v0, v5

    move/from16 v33, v0

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_1a

    .line 1215
    aget-object v33, v5, v18

    const-string v34, "FREQ"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_8

    .line 1216
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1219
    const-string v33, "YEARLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_3

    const-string v33, "BYMONTH"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_3

    const-string v33, "BYMONTHDAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 1221
    const-string v17, "YD"

    .line 1222
    const/4 v7, 0x1

    .line 1213
    :cond_2
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1224
    :cond_3
    const-string v33, "YEARLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 1225
    const-string v17, "YM"

    goto :goto_2

    .line 1227
    :cond_4
    const-string v33, "MONTHLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 1228
    const-string v33, "BYDAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_5

    .line 1229
    const-string v17, "MP"

    goto :goto_2

    .line 1231
    :cond_5
    const-string v33, "BYMONTHDAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_2

    .line 1232
    const-string v17, "MD"

    goto :goto_2

    .line 1235
    :cond_6
    const-string v33, "WEEKLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 1236
    const-string v17, "W"

    goto :goto_2

    .line 1238
    :cond_7
    const-string v33, "DAILY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 1239
    const-string v17, "D"

    goto :goto_2

    .line 1242
    :cond_8
    aget-object v33, v5, v18

    const-string v34, "INTERVAL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_9

    .line 1243
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    .line 1245
    :cond_9
    aget-object v33, v5, v18

    const-string v34, "UNTIL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_a

    .line 1246
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_2

    .line 1248
    :cond_a
    aget-object v33, v5, v18

    const-string v34, "COUNT"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_b

    .line 1249
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 1251
    :cond_b
    aget-object v33, v5, v18

    const-string v34, "BYDAY"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_11

    .line 1252
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1255
    new-instance v15, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1256
    .local v15, eventTimeDB:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1259
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1262
    new-instance v16, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1263
    .local v16, eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1265
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1266
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v14

    .line 1267
    .local v14, dayOffset:I
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "dayOffset: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const/4 v12, 0x0

    .line 1270
    .local v12, ch:C
    const-string v27, ""

    .line 1271
    .local v27, setpostemp:Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, j:I
    :goto_3
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    .line 1272
    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 1273
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "  ch:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/16 v33, 0x30

    move/from16 v0, v33

    if-lt v12, v0, :cond_c

    const/16 v33, 0x39

    move/from16 v0, v33

    if-le v12, v0, :cond_d

    :cond_c
    const/16 v33, 0x2d

    move/from16 v0, v33

    if-ne v12, v0, :cond_e

    .line 1276
    :cond_d
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1271
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 1281
    :cond_e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_10

    .line 1282
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "BYDAY setpostemp: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v33

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    :cond_f
    const/16 v31, 0x0

    .line 1297
    const/16 v30, 0x0

    .line 1299
    goto/16 :goto_2

    .line 1287
    :cond_10
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "BYDAY setpostemp len<0  "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1289
    const-string v4, ""

    .line 1290
    .local v4, alreadyFixOffset:Ljava/lang/String;
    const/16 v21, 0x0

    :goto_4
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_f

    .line 1291
    aget-object v33, v30, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v14, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkWeekDayWithOffset(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1293
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 1299
    .end local v4           #alreadyFixOffset:Ljava/lang/String;
    .end local v12           #ch:C
    .end local v14           #dayOffset:I
    .end local v15           #eventTimeDB:Landroid/text/format/Time;
    .end local v16           #eventTimeUTC:Landroid/text/format/Time;
    .end local v21           #j:I
    .end local v27           #setpostemp:Ljava/lang/String;
    :cond_11
    aget-object v33, v5, v18

    const-string v34, "BYMONTHDAY"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_13

    .line 1300
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1303
    new-instance v15, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1304
    .restart local v15       #eventTimeDB:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1307
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1310
    new-instance v16, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1311
    .restart local v16       #eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1313
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1315
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v14

    .line 1316
    .restart local v14       #dayOffset:I
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "dayOffset: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1319
    const-string v3, ""

    .line 1320
    .local v3, alreadyFixMonthDay:Ljava/lang/String;
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_5
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_12

    .line 1321
    aget-object v33, v30, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkMonthDayWithOffset(ILandroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1323
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 1325
    :cond_12
    const/16 v31, 0x0

    .line 1326
    const/16 v30, 0x0

    .line 1328
    goto/16 :goto_2

    .end local v3           #alreadyFixMonthDay:Ljava/lang/String;
    .end local v14           #dayOffset:I
    .end local v15           #eventTimeDB:Landroid/text/format/Time;
    .end local v16           #eventTimeUTC:Landroid/text/format/Time;
    .end local v21           #j:I
    :cond_13
    aget-object v33, v5, v18

    const-string v34, "BYMONTH"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_18

    .line 1331
    new-instance v15, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1332
    .restart local v15       #eventTimeDB:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1335
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1338
    new-instance v16, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1339
    .restart local v16       #eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1341
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1342
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v14

    .line 1343
    .restart local v14       #dayOffset:I
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "dayOffset: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const/4 v6, 0x0

    .line 1346
    .local v6, bFindByMonthDay:Z
    const/16 v28, 0x0

    .line 1347
    .local v28, tempByMonthDay:Ljava/lang/String;
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    .line 1348
    .local v29, tempByMonthDayAry:[Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, idx:I
    :goto_6
    array-length v0, v5

    move/from16 v33, v0

    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_14

    .line 1349
    aget-object v33, v5, v19

    const-string v34, "BYMONTHDAY"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_15

    .line 1350
    aget-object v33, v5, v19

    aget-object v34, v5, v19

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v19

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1351
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v29

    .line 1352
    const/4 v6, 0x1

    .line 1357
    :cond_14
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1358
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1359
    const-string v4, ""

    .line 1360
    .restart local v4       #alreadyFixOffset:Ljava/lang/String;
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_7
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_17

    .line 1361
    if-eqz v6, :cond_16

    .line 1362
    aget-object v33, v30, v21

    aget-object v34, v29, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkMonthWithOffset(ILandroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1363
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    :goto_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 1348
    .end local v4           #alreadyFixOffset:Ljava/lang/String;
    .end local v21           #j:I
    :cond_15
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_6

    .line 1365
    .restart local v4       #alreadyFixOffset:Ljava/lang/String;
    .restart local v21       #j:I
    :cond_16
    aget-object v33, v30, v21

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1368
    :cond_17
    const/16 v31, 0x0

    .line 1369
    const/16 v30, 0x0

    .line 1371
    goto/16 :goto_2

    .end local v4           #alreadyFixOffset:Ljava/lang/String;
    .end local v6           #bFindByMonthDay:Z
    .end local v14           #dayOffset:I
    .end local v15           #eventTimeDB:Landroid/text/format/Time;
    .end local v16           #eventTimeUTC:Landroid/text/format/Time;
    .end local v19           #idx:I
    .end local v21           #j:I
    .end local v28           #tempByMonthDay:Ljava/lang/String;
    .end local v29           #tempByMonthDayAry:[Ljava/lang/String;
    :cond_18
    aget-object v33, v5, v18

    const-string v34, "BYSETPOS"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_2

    .line 1372
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1373
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1374
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_9
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_19

    .line 1375
    aget-object v33, v30, v21

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 1376
    :cond_19
    const/16 v31, 0x0

    .line 1377
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1382
    .end local v21           #j:I
    :cond_1a
    if-nez v20, :cond_1b

    .line 1383
    const-string v20, "1"

    .line 1385
    :cond_1b
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1387
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_1e

    .line 1388
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_1d

    .line 1390
    :try_start_0
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    if-ltz v33, :cond_1c

    .line 1391
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, "+"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1388
    :goto_b
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 1393
    :cond_1c
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, "-"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    .line 1394
    :catch_0
    move-exception v33

    goto :goto_b

    .line 1398
    :cond_1d
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1400
    .end local v21           #j:I
    :cond_1e
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "bYDMode: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    if-eqz v7, :cond_23

    .line 1403
    const/16 v22, 0x1

    .line 1404
    .local v22, month:I
    const/16 v23, 0x1

    .line 1406
    .local v23, monthDay:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_1f

    .line 1407
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1408
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1411
    :cond_1f
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_20

    .line 1412
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1413
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1415
    :cond_20
    add-int/lit8 v22, v22, -0x1

    .line 1417
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "strDTStart: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    new-instance v24, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1420
    .local v24, origTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1421
    move/from16 v0, v22

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 1422
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1423
    move/from16 v0, v23

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1424
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1426
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "origTime: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    move-object/from16 v0, v24

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->yearDay:I

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1448
    .end local v22           #month:I
    .end local v23           #monthDay:I
    .end local v24           #origTime:Landroid/text/format/Time;
    :cond_21
    :goto_c
    if-eqz v32, :cond_29

    if-nez v13, :cond_29

    .line 1449
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1454
    :cond_22
    :goto_d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1455
    .local v26, sOut:Ljava/lang/String;
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "result: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1429
    .end local v26           #sOut:Ljava/lang/String;
    :cond_23
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_25

    .line 1430
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_24

    .line 1431
    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1430
    add-int/lit8 v21, v21, 0x1

    goto :goto_e

    .line 1432
    :cond_24
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1435
    .end local v21           #j:I
    :cond_25
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_27

    .line 1436
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_26

    .line 1437
    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1436
    add-int/lit8 v21, v21, 0x1

    goto :goto_f

    .line 1438
    :cond_26
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1441
    .end local v21           #j:I
    :cond_27
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_21

    .line 1442
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_28

    .line 1443
    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1442
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 1444
    :cond_28
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_c

    .line 1450
    .end local v21           #j:I
    :cond_29
    if-nez v32, :cond_2a

    if-eqz v13, :cond_2a

    .line 1451
    const-string v33, "#"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_d

    .line 1452
    :cond_2a
    if-nez v32, :cond_22

    if-nez v13, :cond_22

    .line 1453
    const-string v33, "#0"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_d
.end method

.method RRule_VCalToICal(Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .parameter "rrule"

    .prologue
    .line 621
    if-nez p1, :cond_1

    .line 622
    const/16 p1, 0x0

    .line 892
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 624
    .restart local p1
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    const-string v25, "FREQ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-gez v24, :cond_0

    .line 629
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RRule_VCalToICal: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v5, v0, [Ljava/lang/String;

    .line 632
    .local v5, array:[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    const-string v24, "FREQ="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 633
    .local v17, result:Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .line 634
    .local v12, interval:Ljava/lang/String;
    const/16 v21, 0x0

    .line 635
    .local v21, until:Ljava/lang/String;
    const/4 v7, 0x0

    .line 637
    .local v7, count:Ljava/lang/String;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v22, weekday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v15, monthday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v14, month:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v18, setpos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v24, " "

    const/16 v25, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 644
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "YM"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_9

    .line 645
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 646
    const-string v24, "YEARLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    const/4 v11, 0x1

    .local v11, i:I
    :goto_1
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_5

    .line 650
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchMonth(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 651
    aget-object v24, v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_2
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_3

    .line 654
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 655
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 656
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    :cond_3
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_4

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_4

    .line 660
    aget-object v21, v5, v11

    .line 661
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 665
    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 666
    const-string v24, "BYMONTH="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 667
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_6

    .line 668
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 667
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 670
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 671
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 888
    .end local v11           #i:I
    :cond_7
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    if-lez v24, :cond_8

    .line 889
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 891
    :cond_8
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "result: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 674
    :cond_9
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "YD"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_10

    .line 675
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 676
    const-string v24, "YEARLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 677
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 679
    const/4 v11, 0x1

    .restart local v11       #i:I
    :goto_4
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_d

    .line 681
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchYearDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 682
    aget-object v24, v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_a
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_b

    .line 686
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 687
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 688
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    :cond_b
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_c

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_c

    .line 692
    aget-object v21, v5, v11

    .line 693
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 679
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 697
    :cond_d
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 698
    .local v19, t:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 699
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 700
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 701
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "eventStar Time: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "YD event.yearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v20, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 705
    .local v20, tUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 706
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 707
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "tUTC: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 709
    .local v8, dayOffset:I
    const/16 v24, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v13

    .line 711
    .local v13, maxYearDay:I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 712
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_7

    .line 713
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 714
    .local v23, ydYearDay:Ljava/lang/String;
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ydYearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " maxYearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " dayOffset: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 716
    .local v16, nYearDay:I
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 718
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    add-int/lit8 v16, v24, 0x1

    .line 721
    :cond_e
    add-int/lit8 v24, v16, -0x1

    move/from16 v0, v24

    if-le v0, v13, :cond_f

    .line 723
    const-string p1, ""

    goto/16 :goto_0

    .line 726
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getTimeByYearDay(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v6

    .line 727
    .local v6, correctTime:Landroid/text/format/Time;
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "correctly yearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v6, Landroid/text/format/Time;->yearDay:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " correctTime:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v24, "BYMONTH="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 730
    iget v0, v6, Landroid/text/format/Time;->month:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    iput v0, v6, Landroid/text/format/Time;->month:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 731
    const-string v24, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 732
    const-string v24, "BYMONTHDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 733
    iget v0, v6, Landroid/text/format/Time;->monthDay:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 734
    const-string v24, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 712
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 739
    .end local v6           #correctTime:Landroid/text/format/Time;
    .end local v8           #dayOffset:I
    .end local v11           #i:I
    .end local v13           #maxYearDay:I
    .end local v16           #nYearDay:I
    .end local v19           #t:Landroid/text/format/Time;
    .end local v20           #tUTC:Landroid/text/format/Time;
    .end local v23           #ydYearDay:Ljava/lang/String;
    :cond_10
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "MP"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-gez v24, :cond_11

    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "MD"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_1e

    .line 740
    :cond_11
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 741
    const-string v24, "MONTHLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 742
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 745
    new-instance v9, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 746
    .local v9, eventTimeLocal:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeUTC(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 749
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 751
    :cond_12
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 754
    new-instance v10, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 755
    .local v10, eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 757
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 758
    iget v0, v9, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 759
    .restart local v8       #dayOffset:I
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "dayOffset: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v11, 0x1

    .restart local v11       #i:I
    :goto_6
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_19

    .line 762
    aget-object v24, v5, v11

    const-string v25, "+"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_14

    .line 763
    aget-object v24, v5, v11

    const/16 v25, 0x0

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    :cond_13
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 765
    :cond_14
    aget-object v24, v5, v11

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_15

    .line 766
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v5, v11

    const/16 v26, 0x0

    aget-object v27, v5, v11

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 768
    :cond_15
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_16

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_16

    .line 769
    aget-object v21, v5, v11

    .line 770
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 772
    :cond_16
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_17

    .line 773
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 774
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_13

    .line 775
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    .line 777
    :cond_17
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchWeekDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 778
    aget-object v24, v5, v11

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 780
    :cond_18
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchMonthDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 781
    aget-object v24, v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 794
    :cond_19
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_1c

    .line 795
    const-string v24, "BYDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 796
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_1a

    .line 797
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 799
    :cond_1a
    const/4 v11, 0x0

    :goto_8
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_1b

    .line 800
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 799
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 802
    :cond_1b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 803
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 806
    :cond_1c
    const-string v4, ""

    .line 807
    .local v4, alreadyFixMonthDayOffset:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 808
    const-string v24, "BYMONTHDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 809
    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_1d

    .line 810
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v10, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkMonthDayWithOffset(ILandroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 812
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 809
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 815
    :cond_1d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 816
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 819
    .end local v4           #alreadyFixMonthDayOffset:Ljava/lang/String;
    .end local v8           #dayOffset:I
    .end local v9           #eventTimeLocal:Landroid/text/format/Time;
    .end local v10           #eventTimeUTC:Landroid/text/format/Time;
    .end local v11           #i:I
    :cond_1e
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "W"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_25

    .line 820
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 821
    const-string v24, "WEEKLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    new-instance v9, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 826
    .restart local v9       #eventTimeLocal:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeUTC(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 829
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 831
    :cond_1f
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 834
    new-instance v10, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 835
    .restart local v10       #eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 837
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 838
    iget v0, v9, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 839
    .restart local v8       #dayOffset:I
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "dayOffset: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v3, ""

    .line 842
    .local v3, alreadyFixDayOffset:Ljava/lang/String;
    const/4 v11, 0x1

    .restart local v11       #i:I
    :goto_a
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_23

    .line 843
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchWeekDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_20

    .line 844
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkWeekDayWithOffset(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 845
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    :cond_20
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_21

    .line 849
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 850
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_21

    .line 851
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 854
    :cond_21
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_22

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_22

    .line 855
    aget-object v21, v5, v11

    .line 856
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 842
    :cond_22
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a

    .line 860
    :cond_23
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 861
    const-string v24, "BYDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 862
    const/4 v11, 0x0

    :goto_b
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_24

    .line 863
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 862
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 865
    :cond_24
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 866
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 869
    .end local v3           #alreadyFixDayOffset:Ljava/lang/String;
    .end local v8           #dayOffset:I
    .end local v9           #eventTimeLocal:Landroid/text/format/Time;
    .end local v10           #eventTimeUTC:Landroid/text/format/Time;
    .end local v11           #i:I
    :cond_25
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "D"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_7

    .line 870
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 871
    const-string v24, "DAILY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 872
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 874
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_c
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_7

    .line 875
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_26

    .line 876
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 877
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_26

    .line 878
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 881
    :cond_26
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_27

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_27

    .line 882
    aget-object v21, v5, v11

    .line 883
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 874
    :cond_27
    add-int/lit8 v11, v11, 0x1

    goto :goto_c
.end method

.method public getAlarmCV()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 1548
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getAlarmCV(J)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getAlarmCV(J)Landroid/content/ContentValues;
    .locals 4
    .parameter "eventId"

    .prologue
    .line 1552
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1553
    .local v0, cv:Landroid/content/ContentValues;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 1554
    const-string v1, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1556
    :cond_0
    const-string v1, "method"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1557
    const-string v1, "minutes"

    iget-wide v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1559
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 952
    new-instance v0, Lcom/htc/util/calendar/vcalendar/CalendarStruct;

    invoke-direct {v0}, Lcom/htc/util/calendar/vcalendar/CalendarStruct;-><init>()V

    .line 954
    .local v0, calStruct:Lcom/htc/util/calendar/vcalendar/CalendarStruct;
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    iput-object v4, v0, Lcom/htc/util/calendar/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    .line 956
    new-instance v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;

    invoke-direct {v3}, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;-><init>()V

    .line 958
    .local v3, evtStruct:Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    .line 959
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    .line 960
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    .line 961
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    .line 962
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    .line 963
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    .line 964
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    .line 965
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    .line 966
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->rdate:Ljava/lang/String;

    .line 967
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exrule:Ljava/lang/String;

    .line 968
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exdate:Ljava/lang/String;

    .line 969
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    .line 970
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->alarm:Ljava/lang/String;

    .line 971
    iget-boolean v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    iput-boolean v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->isAllday:Z

    .line 972
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->last_update_time:Ljava/lang/String;

    .line 974
    invoke-virtual {v0, v3}, Lcom/htc/util/calendar/vcalendar/CalendarStruct;->addEventList(Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;)V

    .line 977
    :try_start_0
    new-instance v1, Lcom/htc/util/calendar/vcalendar/VCalComposer;

    invoke-direct {v1}, Lcom/htc/util/calendar/vcalendar/VCalComposer;-><init>()V

    .line 979
    .local v1, composer:Lcom/htc/util/calendar/vcalendar/VCalComposer;
    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->createVCal(Lcom/htc/util/calendar/vcalendar/CalendarStruct;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 983
    .end local v1           #composer:Lcom/htc/util/calendar/vcalendar/VCalComposer;
    :goto_0
    return-object v4

    .line 982
    :catch_0
    move-exception v2

    .line 983
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getEventCV()Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1471
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1477
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "iCalGUID"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    const-string v1, "title"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    const-string v1, "dtstart"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1483
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    if-eqz v1, :cond_0

    .line 1484
    const-string v1, "dtend"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1487
    :cond_0
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1488
    const-string v1, "duration"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    :cond_1
    const-string v1, "eventLocation"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1494
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1496
    :cond_2
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->categories:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\ncategories: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->categories:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1499
    :cond_3
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->priority:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\npriority: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->priority:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1502
    :cond_4
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\nstatus: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1505
    :cond_5
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    const-string v4, ""

    if-ne v1, v4, :cond_6

    .line 1506
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1508
    :cond_6
    const-string v1, "description"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    const-string v4, "allDay"

    iget-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-ne v1, v2, :cond_c

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1512
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1513
    const-string v1, "eventTimezone"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    :cond_7
    iget-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    if-eqz v1, :cond_d

    .line 1517
    const-string v1, "hasAlarm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1522
    :goto_1
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1523
    const-string v1, "rrule"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    :cond_8
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1526
    const-string v1, "rdate"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    :cond_9
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1529
    const-string v1, "exrule"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    :cond_a
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1532
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    const-string v2, ";"

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 1533
    const-string v1, "exdate"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    :cond_b
    return-object v0

    :cond_c
    move v1, v3

    .line 1510
    goto :goto_0

    .line 1519
    :cond_d
    const-string v1, "hasAlarm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public getHash()J
    .locals 3

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    .line 994
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 996
    .local v0, crc:Ljava/util/zip/CRC32;
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 1000
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMultiEventAlarmsCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMultiEventsCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMultiToDoAlarmsCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMultiToDoCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public gethasAlarm()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    return v0
.end method

.method public parseVCalendar(Ljava/lang/String;)Z
    .locals 1
    .parameter "vcalendar"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->init(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    .line 146
    return-void
.end method
