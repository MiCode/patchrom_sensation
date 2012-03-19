.class Lcom/htc/utils/ulog/NetworkTrafficLogger$ProcessCpuTimeLoader;
.super Ljava/lang/Object;
.source "NetworkTrafficLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/utils/ulog/NetworkTrafficLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessCpuTimeLoader"
.end annotation


# static fields
.field private static final PROCESS_STATS_FORMAT:[I = null

.field static final PROCESS_STAT_IOWAIT:I = 0x4

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2


# instance fields
.field private final mSinglePidStatsData:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    const/16 v0, 0x2d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/utils/ulog/NetworkTrafficLogger$ProcessCpuTimeLoader;->PROCESS_STATS_FORMAT:[I

    return-void

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x2t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/htc/utils/ulog/NetworkTrafficLogger$ProcessCpuTimeLoader;->mSinglePidStatsData:[J

    .line 104
    return-void
.end method

.method private searchPidForName(Ljava/lang/String;)I
    .locals 23
    .parameter "processName"

    .prologue
    .line 153
    if-nez p1, :cond_1

    .line 154
    const/16 v16, -0x1

    .line 206
    :cond_0
    :goto_0
    return v16

    .line 157
    :cond_1
    sget-boolean v20, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    if-eqz v20, :cond_2

    const-string v20, "NetworkTrafficLogger"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Find the PID for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    .line 161
    .local v15, manager:Landroid/app/IActivityManager;
    if-nez v15, :cond_3

    .line 162
    const/16 v16, -0x1

    goto :goto_0

    .line 169
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 170
    .local v5, begin:J
    invoke-interface {v15}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 172
    .local v3, appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_8

    .line 173
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 174
    .local v2, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v16, v0

    .line 175
    .local v16, pId:I
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 177
    .local v17, pName:Ljava/lang/String;
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 179
    .local v10, end:J
    sub-long v7, v10, v5

    .line 180
    .local v7, duration:J
    sget-boolean v20, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    if-eqz v20, :cond_0

    const-string v20, "NetworkTrafficLogger"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is found: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 201
    .end local v2           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5           #begin:J
    .end local v7           #duration:J
    .end local v10           #end:J
    .end local v16           #pId:I
    .end local v17           #pName:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 202
    .local v9, e:Landroid/os/RemoteException;
    const-string v20, "NetworkTrafficLogger"

    const-string v21, "Error occurs when getting IActivityManager"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_5
    :goto_1
    const/16 v16, -0x1

    goto/16 :goto_0

    .line 183
    .restart local v2       #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v3       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v5       #begin:J
    .restart local v16       #pId:I
    .restart local v17       #pName:Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v19, v0

    .line 184
    .local v19, pkgList:[Ljava/lang/String;
    if-eqz v19, :cond_4

    .line 185
    move-object/from16 v4, v19

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_2
    if-ge v13, v14, :cond_4

    aget-object v18, v4, v13

    .line 186
    .local v18, pkg:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 188
    .restart local v10       #end:J
    sub-long v7, v10, v5

    .line 189
    .restart local v7       #duration:J
    sget-boolean v20, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    if-eqz v20, :cond_0

    const-string v20, "NetworkTrafficLogger"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is found within the packages loaded in the "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 185
    .end local v7           #duration:J
    .end local v10           #end:J
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 197
    .end local v2           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v16           #pId:I
    .end local v17           #pName:Ljava/lang/String;
    .end local v18           #pkg:Ljava/lang/String;
    .end local v19           #pkgList:[Ljava/lang/String;
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 198
    .restart local v10       #end:J
    sub-long v7, v10, v5

    .line 200
    .restart local v7       #duration:J
    sget-boolean v20, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    if-eqz v20, :cond_5

    const-string v20, "NetworkTrafficLogger"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot find "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public getCpuTimeForPid(I[J)V
    .locals 6
    .parameter "pid"
    .parameter "time"

    .prologue
    const/4 v5, 0x0

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/stat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, statFile:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/utils/ulog/NetworkTrafficLogger$ProcessCpuTimeLoader;->mSinglePidStatsData:[J

    .line 115
    .local v2, statsData:[J
    sget-object v3, Lcom/htc/utils/ulog/NetworkTrafficLogger$ProcessCpuTimeLoader;->PROCESS_STATS_FORMAT:[I

    invoke-static {v1, v3, v5, v2, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    if-eqz p2, :cond_0

    .line 119
    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    aget-wide v4, v2, v4

    aput-wide v4, p2, v3

    .line 120
    const/4 v3, 0x1

    const/4 v4, 0x3

    aget-wide v4, v2, v4

    aput-wide v4, p2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "NetworkTrafficLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurs when getting CPU time from proc file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCpuTimeForProcessName(Ljava/lang/String;[J)I
    .locals 1
    .parameter "processName"
    .parameter "time"

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/NetworkTrafficLogger$ProcessCpuTimeLoader;->searchPidForName(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, pid:I
    invoke-virtual {p0, v0, p2}, Lcom/htc/utils/ulog/NetworkTrafficLogger$ProcessCpuTimeLoader;->getCpuTimeForPid(I[J)V

    .line 141
    .end local v0           #pid:I
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
