.class public Lcom/htc/util/calendar/EventInstance;
.super Ljava/lang/Object;
.source "EventInstance.java"


# instance fields
.field private begin:J

.field private description:Ljava/lang/String;

.field private end:J

.field private id:J

.field private location:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 1
    .parameter "id"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/htc/util/calendar/EventInstance;->id:J

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/calendar/EventInstance;->title:Ljava/lang/String;

    .line 17
    iput-wide p3, p0, Lcom/htc/util/calendar/EventInstance;->begin:J

    .line 18
    iput-wide p5, p0, Lcom/htc/util/calendar/EventInstance;->end:J

    .line 19
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JJ)V
    .locals 0
    .parameter "id"
    .parameter "title"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/htc/util/calendar/EventInstance;->id:J

    .line 23
    iput-object p3, p0, Lcom/htc/util/calendar/EventInstance;->title:Ljava/lang/String;

    .line 24
    iput-wide p4, p0, Lcom/htc/util/calendar/EventInstance;->begin:J

    .line 25
    iput-wide p6, p0, Lcom/htc/util/calendar/EventInstance;->end:J

    .line 26
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "id"
    .parameter "title"
    .parameter "location"
    .parameter "description"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/htc/util/calendar/EventInstance;->id:J

    .line 30
    iput-object p3, p0, Lcom/htc/util/calendar/EventInstance;->title:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/htc/util/calendar/EventInstance;->location:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/htc/util/calendar/EventInstance;->description:Ljava/lang/String;

    .line 33
    iput-wide p6, p0, Lcom/htc/util/calendar/EventInstance;->begin:J

    .line 34
    iput-wide p8, p0, Lcom/htc/util/calendar/EventInstance;->end:J

    .line 35
    return-void
.end method


# virtual methods
.method public getBegin()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/htc/util/calendar/EventInstance;->begin:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/util/calendar/EventInstance;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/htc/util/calendar/EventInstance;->end:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/htc/util/calendar/EventInstance;->id:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/util/calendar/EventInstance;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/util/calendar/EventInstance;->title:Ljava/lang/String;

    return-object v0
.end method
