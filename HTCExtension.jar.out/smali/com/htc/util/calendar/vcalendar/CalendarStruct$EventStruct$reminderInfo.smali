.class public Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct$reminderInfo;
.super Ljava/lang/Object;
.source "CalendarStruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "reminderInfo"
.end annotation


# instance fields
.field public final method:I

.field public final minutes:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .parameter "minutes"
    .parameter "method"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct$reminderInfo;->minutes:J

    .line 53
    iput p3, p0, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct$reminderInfo;->method:I

    .line 54
    return-void
.end method
