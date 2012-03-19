.class public Lcom/htc/util/calendar/Attendee;
.super Ljava/lang/Object;
.source "Attendee.java"


# instance fields
.field private mEmail:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "email"
    .parameter "status"

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/htc/util/calendar/Attendee;->mName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/htc/util/calendar/Attendee;->mEmail:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/calendar/Attendee;->mStatus:I

    .line 14
    iput-object p1, p0, Lcom/htc/util/calendar/Attendee;->mName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/htc/util/calendar/Attendee;->mEmail:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/htc/util/calendar/Attendee;->mStatus:I

    .line 17
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/util/calendar/Attendee;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/util/calendar/Attendee;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/util/calendar/Attendee;->mStatus:I

    return v0
.end method
