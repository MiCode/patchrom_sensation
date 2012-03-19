.class public Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncreasingTimeOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/AlarmManagerService$Alarm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 12
    .parameter "a1"
    .parameter "a2"

    .prologue
    .line 1172
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1173
    .local v4, when1:J
    iget-wide v6, p2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1174
    .local v6, when2:J
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1175
    .local v0, interval1:J
    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1176
    .local v2, interval2:J
    sub-long v8, v4, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 1177
    const/4 v8, 0x1

    .line 1186
    :goto_0
    return v8

    .line 1179
    :cond_0
    sub-long v8, v4, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 1180
    const/4 v8, -0x1

    goto :goto_0

    .line 1182
    :cond_1
    sub-long v8, v0, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 1183
    const/4 v8, 0x1

    goto :goto_0

    .line 1184
    :cond_2
    sub-long v8, v0, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 1185
    const/4 v8, -0x1

    goto :goto_0

    .line 1186
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1170
    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    .end local p1
    check-cast p2, Lcom/android/server/AlarmManagerService$Alarm;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;->compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v0

    return v0
.end method
