.class Landroid/os/StrictMode$AndroidBlockGuardPolicy;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ldalvik/system/BlockGuard$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidBlockGuardPolicy"
.end annotation


# instance fields
.field private final mLastViolationTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyMask:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "policyMask"

    .prologue
    .line 1114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Ljava/util/HashMap;

    .line 1115
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 1116
    return-void
.end method


# virtual methods
.method public getPolicyMask()I
    .locals 1

    .prologue
    .line 1125
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    return v0
.end method

.method handleViolation(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 22
    .parameter "info"

    .prologue
    .line 1298
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 1299
    :cond_0
    const-string v19, "StrictMode"

    const-string/jumbo v20, "unexpected null stacktrace"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_1
    :goto_0
    return-void

    .line 1303
    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->access$800()Z

    move-result v19

    if-eqz v19, :cond_3

    const-string v19, "StrictMode"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "handleViolation; policy="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1306
    invoke-static {}, Landroid/os/StrictMode;->access$900()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 1307
    .local v18, violations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    if-nez v18, :cond_6

    .line 1308
    new-instance v18, Ljava/util/ArrayList;

    .end local v18           #violations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(I)V

    .line 1309
    .restart local v18       #violations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    invoke-static {}, Landroid/os/StrictMode;->access$900()Ljava/lang/ThreadLocal;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1314
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/StrictMode$ViolationInfo;

    .line 1315
    .local v12, previous:Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v12, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    goto :goto_0

    .line 1310
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v12           #previous:Landroid/os/StrictMode$ViolationInfo;
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    goto/16 :goto_0

    .line 1320
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1325
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v18           #violations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1326
    .local v4, crashFingerprint:Ljava/lang/Integer;
    const-wide/16 v8, 0x0

    .line 1327
    .local v8, lastViolationTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1330
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1331
    .local v10, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mLastViolationTime:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    const-wide/16 v19, 0x0

    cmp-long v19, v8, v19

    if-nez v19, :cond_d

    const-wide v14, 0x7fffffffffffffffL

    .line 1335
    .local v14, timeSinceLastViolationMillis:J
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x10

    if-eqz v19, :cond_a

    const-wide/16 v19, 0x3e8

    cmp-long v19, v14, v19

    if-lez v19, :cond_a

    .line 1337
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    .line 1338
    const-string v19, "StrictMode"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StrictMode policy violation; ~duration="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ms: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_a
    :goto_2
    const/16 v17, 0x0

    .line 1351
    .local v17, violationMaskSubset:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x20

    if-eqz v19, :cond_b

    const-wide/16 v19, 0x7530

    cmp-long v19, v14, v19

    if-lez v19, :cond_b

    .line 1353
    or-int/lit8 v17, v17, 0x20

    .line 1356
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_c

    const-wide/16 v19, 0x0

    cmp-long v19, v8, v19

    if-nez v19, :cond_c

    .line 1357
    move/from16 v0, v17

    or-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    .line 1360
    :cond_c
    if-eqz v17, :cond_11

    .line 1361
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    move-object/from16 v19, v0

    #calls: Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I
    invoke-static/range {v19 .. v19}, Landroid/os/StrictMode;->access$1000(Ljava/lang/String;)I

    move-result v16

    .line 1362
    .local v16, violationBit:I
    or-int v17, v17, v16

    .line 1363
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v13

    .line 1365
    .local v13, savedPolicyMask:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xbf0

    move/from16 v19, v0

    const/16 v20, 0x80

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    const/4 v7, 0x1

    .line 1366
    .local v7, justDropBox:Z
    :goto_3
    if-eqz v7, :cond_10

    .line 1373
    move/from16 v0, v17

    move-object/from16 v1, p1

    #calls: Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
    invoke-static {v0, v1}, Landroid/os/StrictMode;->access$1100(ILandroid/os/StrictMode$ViolationInfo;)V

    goto/16 :goto_0

    .line 1332
    .end local v7           #justDropBox:Z
    .end local v13           #savedPolicyMask:I
    .end local v14           #timeSinceLastViolationMillis:J
    .end local v16           #violationBit:I
    .end local v17           #violationMaskSubset:I
    :cond_d
    sub-long v14, v10, v8

    goto/16 :goto_1

    .line 1341
    .restart local v14       #timeSinceLastViolationMillis:J
    :cond_e
    const-string v19, "StrictMode"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StrictMode policy violation: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1365
    .restart local v13       #savedPolicyMask:I
    .restart local v16       #violationBit:I
    .restart local v17       #violationMaskSubset:I
    :cond_f
    const/4 v7, 0x0

    goto :goto_3

    .line 1383
    .restart local v7       #justDropBox:Z
    :cond_10
    const/16 v19, 0x0

    :try_start_0
    #calls: Landroid/os/StrictMode;->setThreadPolicyMask(I)V
    invoke-static/range {v19 .. v19}, Landroid/os/StrictMode;->access$1200(I)V

    .line 1385
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v19

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v17

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    :goto_4
    #calls: Landroid/os/StrictMode;->setThreadPolicyMask(I)V
    invoke-static {v13}, Landroid/os/StrictMode;->access$1200(I)V

    .line 1397
    .end local v7           #justDropBox:Z
    .end local v13           #savedPolicyMask:I
    .end local v16           #violationBit:I
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x40

    if-eqz v19, :cond_1

    .line 1398
    #calls: Landroid/os/StrictMode;->executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V
    invoke-static/range {p1 .. p1}, Landroid/os/StrictMode;->access$1300(Landroid/os/StrictMode$ViolationInfo;)V

    goto/16 :goto_0

    .line 1389
    .restart local v7       #justDropBox:Z
    .restart local v13       #savedPolicyMask:I
    .restart local v16       #violationBit:I
    :catch_0
    move-exception v5

    .line 1390
    .local v5, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v19, "StrictMode"

    const-string v20, "RemoteException trying to handle StrictMode violation"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1393
    .end local v5           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v19

    #calls: Landroid/os/StrictMode;->setThreadPolicyMask(I)V
    invoke-static {v13}, Landroid/os/StrictMode;->access$1200(I)V

    throw v19
.end method

.method handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    .line 1209
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1227
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    iget v3, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    and-int/lit16 v3, v3, 0xbf0

    const/16 v4, 0x40

    if-ne v3, v4, :cond_2

    .line 1229
    :cond_0
    const/4 v3, -0x1

    iput v3, p1, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 1230
    invoke-virtual {p0, p1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolation(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1290
    :cond_1
    :goto_0
    return-void

    .line 1234
    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->access$500()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1235
    .local v1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 1239
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v5, :cond_1

    .line 1247
    iget v3, p1, Landroid/os/StrictMode$ViolationInfo;->policy:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_4

    invoke-static {}, Landroid/os/StrictMode;->access$600()Landroid/util/Singleton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/IWindowManager;

    move-object v2, v3

    .line 1249
    .local v2, windowManager:Landroid/view/IWindowManager;
    :goto_1
    if-eqz v2, :cond_3

    .line 1251
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    :cond_3
    :goto_2
    invoke-static {}, Landroid/os/StrictMode;->access$700()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    new-instance v4, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;

    invoke-direct {v4, p0, v2, v1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;-><init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1247
    .end local v2           #windowManager:Landroid/view/IWindowManager;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 1252
    .restart local v2       #windowManager:Landroid/view/IWindowManager;
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method onCustomSlowCall(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 1148
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1151
    :cond_1
    #calls: Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1154
    new-instance v0, Landroid/os/StrictMode$StrictModeCustomViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1, p1}, Landroid/os/StrictMode$StrictModeCustomViolation;-><init>(ILjava/lang/String;)V

    .line 1155
    .local v0, e:Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1156
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    goto :goto_0
.end method

.method public onNetwork()V
    .locals 2

    .prologue
    .line 1174
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2

    .line 1178
    new-instance v1, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v1

    .line 1180
    :cond_2
    #calls: Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1183
    new-instance v0, Landroid/os/StrictMode$StrictModeNetworkViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeNetworkViolation;-><init>(I)V

    .line 1184
    .local v0, e:Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1185
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    goto :goto_0
.end method

.method public onReadFromDisk()V
    .locals 2

    .prologue
    .line 1161
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    #calls: Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1167
    new-instance v0, Landroid/os/StrictMode$StrictModeDiskReadViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeDiskReadViolation;-><init>(I)V

    .line 1168
    .local v0, e:Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1169
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    goto :goto_0
.end method

.method public onWriteToDisk()V
    .locals 3

    .prologue
    .line 1130
    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    #calls: Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z
    invoke-static {}, Landroid/os/StrictMode;->access$400()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1137
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1141
    new-instance v0, Landroid/os/StrictMode$StrictModeDiskWriteViolation;

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-direct {v0, v1}, Landroid/os/StrictMode$StrictModeDiskWriteViolation;-><init>(I)V

    .line 1142
    .local v0, e:Ldalvik/system/BlockGuard$BlockGuardPolicyException;
    invoke-virtual {v0}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1143
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V

    goto :goto_0
.end method

.method public setPolicyMask(I)V
    .locals 0
    .parameter "policyMask"

    .prologue
    .line 1189
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    .line 1190
    return-void
.end method

.method startHandlingViolationException(Ldalvik/system/BlockGuard$BlockGuardPolicyException;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 1198
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    invoke-virtual {p1}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;->getPolicy()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/Throwable;I)V

    .line 1199
    .local v0, info:Landroid/os/StrictMode$ViolationInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 1200
    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1201
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidBlockGuardPolicy; mPolicyMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mPolicyMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
