.class Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;
.super Ljava/lang/Object;
.source "NetworkTrafficLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/utils/ulog/NetworkTrafficLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScanRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;


# direct methods
.method private constructor <init>(Lcom/htc/utils/ulog/NetworkTrafficLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;->this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/utils/ulog/NetworkTrafficLogger;Lcom/htc/utils/ulog/NetworkTrafficLogger$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;-><init>(Lcom/htc/utils/ulog/NetworkTrafficLogger;)V

    return-void
.end method

.method private dumpLog([Ljava/lang/String;)V
    .locals 40
    .parameter "list"

    .prologue
    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v37, 0x100

    move/from16 v0, v37

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 277
    .local v4, builder:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$000()Ljava/util/Date;

    move-result-object v37

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/util/Date;->setTime(J)V

    .line 278
    invoke-static {}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$100()Ljava/text/SimpleDateFormat;

    move-result-object v37

    invoke-static {}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$000()Ljava/util/Date;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    .line 279
    .local v20, time:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 283
    .local v7, eTime:J
    const-string v37, ","

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    .line 287
    .local v25, uTime:J
    const-string v37, ","

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 290
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v21

    .line 291
    .local v21, totalRx:J
    const-string v37, ","

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 294
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v23

    .line 295
    .local v23, totalTx:J
    const-string v37, ","

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v15

    .line 299
    .local v15, mobileRx:J
    const-string v37, ","

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 302
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v17

    .line 303
    .local v17, mobileTx:J
    const-string v37, ","

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 306
    const-wide/16 v9, 0x0

    .line 307
    .local v9, hotspotRx:J
    const-wide/16 v11, 0x0

    .line 308
    .local v11, hotspotTx:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;->this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    move-object/from16 v37, v0

    #getter for: Lcom/htc/utils/ulog/NetworkTrafficLogger;->mTetheredInterface:Ljava/util/Set;
    invoke-static/range {v37 .. v37}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$200(Lcom/htc/utils/ulog/NetworkTrafficLogger;)Ljava/util/Set;

    move-result-object v37

    const-string v38, "wl0.1"

    invoke-interface/range {v37 .. v38}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_0

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;->this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    move-object/from16 v37, v0

    const-string v38, "wl0.1"

    #calls: Lcom/htc/utils/ulog/NetworkTrafficLogger;->getInterfaceRx(Ljava/lang/String;)J
    invoke-static/range {v37 .. v38}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$300(Lcom/htc/utils/ulog/NetworkTrafficLogger;Ljava/lang/String;)J

    move-result-wide v9

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;->this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    move-object/from16 v37, v0

    const-string v38, "wl0.1"

    #calls: Lcom/htc/utils/ulog/NetworkTrafficLogger;->getInterfaceTx(Ljava/lang/String;)J
    invoke-static/range {v37 .. v38}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$400(Lcom/htc/utils/ulog/NetworkTrafficLogger;Ljava/lang/String;)J

    move-result-wide v11

    .line 313
    :cond_0
    const-string v37, ","

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 314
    const-string v37, ","

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 316
    const-wide/16 v33, 0x0

    .line 317
    .local v33, usbRx:J
    const-wide/16 v35, 0x0

    .line 318
    .local v35, usbTx:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;->this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    move-object/from16 v37, v0

    #getter for: Lcom/htc/utils/ulog/NetworkTrafficLogger;->mTetheredInterface:Ljava/util/Set;
    invoke-static/range {v37 .. v37}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$200(Lcom/htc/utils/ulog/NetworkTrafficLogger;)Ljava/util/Set;

    move-result-object v37

    const-string v38, "usb0"

    invoke-interface/range {v37 .. v38}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;->this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    move-object/from16 v37, v0

    const-string v38, "usb0"

    #calls: Lcom/htc/utils/ulog/NetworkTrafficLogger;->getInterfaceRx(Ljava/lang/String;)J
    invoke-static/range {v37 .. v38}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$300(Lcom/htc/utils/ulog/NetworkTrafficLogger;Ljava/lang/String;)J

    move-result-wide v33

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;->this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    move-object/from16 v37, v0

    const-string v38, "usb0"

    #calls: Lcom/htc/utils/ulog/NetworkTrafficLogger;->getInterfaceTx(Ljava/lang/String;)J
    invoke-static/range {v37 .. v38}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$400(Lcom/htc/utils/ulog/NetworkTrafficLogger;Ljava/lang/String;)J

    move-result-wide v35

    .line 323
    :cond_1
    const-string v37, ","

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 324
    const-string v37, ","

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 326
    const/4 v5, 0x0

    .line 327
    .local v5, count:I
    move-object/from16 v3, p1

    .local v3, arr$:[Ljava/lang/String;
    array-length v14, v3

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    if-ge v13, v14, :cond_3

    aget-object v19, v3, v13

    .line 330
    .local v19, name:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 331
    .local v27, uid:I
    const-string v37, ","

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    #calls: Lcom/htc/utils/ulog/NetworkTrafficLogger;->getNameForUid(I)Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$500(I)Ljava/lang/String;

    move-result-object v28

    .line 335
    .local v28, uidName:Ljava/lang/String;
    if-eqz v28, :cond_2

    .line 336
    const-string v37, ","

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :goto_1
    invoke-static/range {v27 .. v27}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v29

    .line 343
    .local v29, uidRx:J
    const-string v37, ","

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 346
    invoke-static/range {v27 .. v27}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v31

    .line 347
    .local v31, uidTx:J
    const-string v37, ","

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 355
    .end local v27           #uid:I
    .end local v28           #uidName:Ljava/lang/String;
    .end local v29           #uidRx:J
    .end local v31           #uidTx:J
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 327
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 338
    .restart local v27       #uid:I
    .restart local v28       #uidName:Ljava/lang/String;
    :cond_2
    const-string v37, ","

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "-"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 348
    .end local v27           #uid:I
    .end local v28           #uidName:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 349
    .local v6, e:Ljava/lang/NumberFormatException;
    const-string v37, "NetworkTrafficLogger"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Unexpected directory ["

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "] when reading file names under "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "/proc/uid_stat/"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 359
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v19           #name:Ljava/lang/String;
    :cond_3
    const-string v37, "NetworkTrafficLogger"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method private dumpULog([Ljava/lang/String;)V
    .locals 39
    .parameter "list"

    .prologue
    .line 364
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v23

    .line 365
    .local v23, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    if-eqz v23, :cond_4

    .line 367
    const-string v36, "system_server"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v36

    const-string v37, "data_traffic"

    invoke-interface/range {v36 .. v37}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 370
    const-string v36, "category"

    const-string v37, "network_traffic_full_scan"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 373
    invoke-static {}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$000()Ljava/util/Date;

    move-result-object v36

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    invoke-virtual/range {v36 .. v38}, Ljava/util/Date;->setTime(J)V

    .line 374
    invoke-static {}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$100()Ljava/text/SimpleDateFormat;

    move-result-object v36

    invoke-static {}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$000()Ljava/util/Date;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 375
    .local v18, time:Ljava/lang/String;
    const-string v36, "time"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 379
    .local v5, eTime:J
    const-string v36, "elapsed_time"

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 383
    .local v24, uTime:J
    const-string v36, "uptime"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 386
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v19

    .line 387
    .local v19, totalRx:J
    const-string v36, "total_rx"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 390
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v21

    .line 391
    .local v21, totalTx:J
    const-string v36, "total_tx"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 394
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v13

    .line 395
    .local v13, mobileRx:J
    const-string v36, "mobile_rx"

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 398
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v15

    .line 399
    .local v15, mobileTx:J
    const-string v36, "mobile_tx"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;->this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    move-object/from16 v36, v0

    #getter for: Lcom/htc/utils/ulog/NetworkTrafficLogger;->mTetheredInterface:Ljava/util/Set;
    invoke-static/range {v36 .. v36}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$200(Lcom/htc/utils/ulog/NetworkTrafficLogger;)Ljava/util/Set;

    move-result-object v36

    const-string v37, "wl0.1"

    invoke-interface/range {v36 .. v37}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;->this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    move-object/from16 v36, v0

    const-string v37, "wl0.1"

    #calls: Lcom/htc/utils/ulog/NetworkTrafficLogger;->getInterfaceRx(Ljava/lang/String;)J
    invoke-static/range {v36 .. v37}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$300(Lcom/htc/utils/ulog/NetworkTrafficLogger;Ljava/lang/String;)J

    move-result-wide v7

    .line 405
    .local v7, hotspotRx:J
    const-string v36, "hotspot_rx"

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;->this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    move-object/from16 v36, v0

    const-string v37, "wl0.1"

    #calls: Lcom/htc/utils/ulog/NetworkTrafficLogger;->getInterfaceTx(Ljava/lang/String;)J
    invoke-static/range {v36 .. v37}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$400(Lcom/htc/utils/ulog/NetworkTrafficLogger;Ljava/lang/String;)J

    move-result-wide v9

    .line 408
    .local v9, hotspotTx:J
    const-string v36, "hotspot_tx"

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 411
    .end local v7           #hotspotRx:J
    .end local v9           #hotspotTx:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;->this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    move-object/from16 v36, v0

    #getter for: Lcom/htc/utils/ulog/NetworkTrafficLogger;->mTetheredInterface:Ljava/util/Set;
    invoke-static/range {v36 .. v36}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$200(Lcom/htc/utils/ulog/NetworkTrafficLogger;)Ljava/util/Set;

    move-result-object v36

    const-string v37, "usb0"

    invoke-interface/range {v36 .. v37}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;->this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    move-object/from16 v36, v0

    const-string v37, "usb0"

    #calls: Lcom/htc/utils/ulog/NetworkTrafficLogger;->getInterfaceRx(Ljava/lang/String;)J
    invoke-static/range {v36 .. v37}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$300(Lcom/htc/utils/ulog/NetworkTrafficLogger;Ljava/lang/String;)J

    move-result-wide v32

    .line 414
    .local v32, usbRx:J
    const-string v36, "usb_rx"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;->this$0:Lcom/htc/utils/ulog/NetworkTrafficLogger;

    move-object/from16 v36, v0

    const-string v37, "usb0"

    #calls: Lcom/htc/utils/ulog/NetworkTrafficLogger;->getInterfaceTx(Ljava/lang/String;)J
    invoke-static/range {v36 .. v37}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$400(Lcom/htc/utils/ulog/NetworkTrafficLogger;Ljava/lang/String;)J

    move-result-wide v34

    .line 417
    .local v34, usbTx:J
    const-string v36, "usb_sent"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 420
    .end local v32           #usbRx:J
    .end local v34           #usbTx:J
    :cond_1
    move-object/from16 v3, p1

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_3

    aget-object v17, v3, v11

    .line 423
    .local v17, name:Ljava/lang/String;
    :try_start_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 426
    .local v26, uid:I
    #calls: Lcom/htc/utils/ulog/NetworkTrafficLogger;->getNameForUid(I)Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/htc/utils/ulog/NetworkTrafficLogger;->access$500(I)Ljava/lang/String;

    move-result-object v27

    .line 427
    .local v27, uidName:Ljava/lang/String;
    if-eqz v27, :cond_2

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "uidName_"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 430
    :cond_2
    invoke-static/range {v26 .. v26}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v28

    .line 431
    .local v28, uidRx:J
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "per-uid_rx_"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 434
    invoke-static/range {v26 .. v26}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v30

    .line 435
    .local v30, uidTx:J
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "per-uid_tx_"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .end local v26           #uid:I
    .end local v27           #uidName:Ljava/lang/String;
    .end local v28           #uidRx:J
    .end local v30           #uidTx:J
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 436
    :catch_0
    move-exception v4

    .line 437
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v36, "NetworkTrafficLogger"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Unexpected directory ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "] when reading file names under "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "/proc/uid_stat/"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 446
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .end local v17           #name:Ljava/lang/String;
    :cond_3
    invoke-static/range {v23 .. v23}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 448
    invoke-virtual/range {v23 .. v23}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 450
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #eTime:J
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #mobileRx:J
    .end local v15           #mobileTx:J
    .end local v18           #time:Ljava/lang/String;
    .end local v19           #totalRx:J
    .end local v21           #totalTx:J
    .end local v24           #uTime:J
    :cond_4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 454
    sget-boolean v3, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "NetworkTrafficLogger"

    const-string v4, ">> fullScanUidStat()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/uid_stat/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 461
    .local v2, uTrafficDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 464
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, list:[Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;->dumpULog([Ljava/lang/String;)V

    .line 467
    sget-boolean v3, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 468
    invoke-direct {p0, v1}, Lcom/htc/utils/ulog/NetworkTrafficLogger$FullScanRunnable;->dumpLog([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v1           #list:[Ljava/lang/String;
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/htc/utils/ulog/NetworkTrafficLogger;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "NetworkTrafficLogger"

    const-string v4, "<< fullScanUidStat()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_2
    return-void

    .line 470
    .restart local v1       #list:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 471
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "NetworkTrafficLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot print log: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
