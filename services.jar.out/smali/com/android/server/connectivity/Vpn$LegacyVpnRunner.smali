.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private final mConfig:Lcom/android/internal/net/VpnConfig;

.field private final mDaemons:[Ljava/lang/String;

.field private final mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field private mTimer:J

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "config"
    .parameter "racoon"
    .parameter "mtpd"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 450
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 451
    const-string v0, "LegacyVpnRunner"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 448
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 452
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 453
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "racoon"

    aput-object v1, v0, v2

    const-string v1, "mtpd"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 454
    new-array v0, v4, [[Ljava/lang/String;

    aput-object p3, v0, v2

    aput-object p4, v0, v3

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 456
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 459
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 463
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v1, "[Legacy VPN]"

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 464
    return-void
.end method

.method private checkpoint(Z)V
    .locals 8
    .parameter "yield"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 506
    .local v0, now:J
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 507
    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 508
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 515
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 510
    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc8

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 512
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 513
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Time is up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private execute()V
    .locals 30

    .prologue
    .line 521
    const/16 v25, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 525
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    aget-object v12, v9, v16

    .line 526
    .local v12, daemon:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "init.svc."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 527
    .local v18, key:Ljava/lang/String;
    :goto_1
    const-string v25, "stopped"

    const-string v26, "stopped"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 528
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 701
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v12           #daemon:Ljava/lang/String;
    .end local v16           #i$:I
    .end local v18           #key:Ljava/lang/String;
    .end local v19           #len$:I
    :catch_0
    move-exception v14

    .line 702
    .local v14, e:Ljava/lang/Exception;
    :try_start_1
    const-string v25, "LegacyVpnRunner"

    const-string v26, "Aborting"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1e

    .line 707
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v9       #arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    .restart local v19       #len$:I
    const/16 v16, 0x0

    .restart local v16       #i$:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_1e

    aget-object v12, v9, v16

    .line 708
    .restart local v12       #daemon:Ljava/lang/String;
    const-string v25, "ctl.stop"

    move-object/from16 v0, v25

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 525
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v18       #key:Ljava/lang/String;
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 533
    .end local v12           #daemon:Ljava/lang/String;
    .end local v18           #key:Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v24, Ljava/io/File;

    const-string v25, "/data/misc/vpn/state"

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    .local v24, state:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->delete()Z

    .line 535
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 536
    new-instance v25, Ljava/lang/IllegalStateException;

    const-string v26, "Cannot delete the state"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 706
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v16           #i$:I
    .end local v19           #len$:I
    .end local v24           #state:Ljava/io/File;
    :catchall_0
    move-exception v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    .line 707
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v9       #arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    .restart local v19       #len$:I
    const/16 v16, 0x0

    .restart local v16       #i$:I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_1b

    aget-object v12, v9, v16

    .line 708
    .restart local v12       #daemon:Ljava/lang/String;
    const-string v26, "ctl.stop"

    move-object/from16 v0, v26

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 538
    .end local v12           #daemon:Ljava/lang/String;
    .restart local v24       #state:Ljava/io/File;
    :cond_2
    :try_start_3
    new-instance v25, Ljava/io/File;

    const-string v26, "/data/misc/vpn/abort"

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 541
    const/16 v22, 0x0

    .line 542
    .local v22, restart:Z
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .local v9, arr$:[[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    aget-object v8, v9, v16

    .line 543
    .local v8, arguments:[Ljava/lang/String;
    if-nez v22, :cond_3

    if-eqz v8, :cond_4

    :cond_3
    const/16 v22, 0x1

    .line 542
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 543
    :cond_4
    const/16 v22, 0x0

    goto :goto_5

    .line 545
    .end local v8           #arguments:[Ljava/lang/String;
    :cond_5
    if-nez v22, :cond_6

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_21

    .line 707
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_21

    aget-object v12, v9, v16

    .line 708
    .restart local v12       #daemon:Ljava/lang/String;
    const-string v25, "ctl.stop"

    move-object/from16 v0, v25

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 549
    .end local v12           #daemon:Ljava/lang/String;
    .local v9, arr$:[[Ljava/lang/String;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 552
    const/4 v15, 0x0

    .end local v9           #arr$:[[Ljava/lang/String;
    .local v15, i:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v15, v0, :cond_d

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v8, v25, v15

    .line 554
    .restart local v8       #arguments:[Ljava/lang/String;
    if-nez v8, :cond_8

    .line 552
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 559
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v12, v25, v15

    .line 560
    .restart local v12       #daemon:Ljava/lang/String;
    const-string v25, "ctl.start"

    move-object/from16 v0, v25

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "init.svc."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 564
    .restart local v18       #key:Ljava/lang/String;
    :goto_8
    const-string v25, "running"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 565
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_8

    .line 569
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v25, v0

    new-instance v26, Landroid/net/LocalSocket;

    invoke-direct/range {v26 .. v26}, Landroid/net/LocalSocket;-><init>()V

    aput-object v26, v25, v15

    .line 570
    new-instance v6, Landroid/net/LocalSocketAddress;

    sget-object v25, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v25

    invoke-direct {v6, v12, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 576
    .local v6, address:Landroid/net/LocalSocketAddress;
    :goto_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v25, v0

    aget-object v25, v25, v15

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 583
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v25, v0

    aget-object v25, v25, v15

    const/16 v26, 0x1f4

    invoke-virtual/range {v25 .. v26}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v25, v0

    aget-object v25, v25, v15

    invoke-virtual/range {v25 .. v25}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    .line 587
    .local v20, out:Ljava/io/OutputStream;
    move-object v9, v8

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    const/16 v16, 0x0

    :goto_a
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    aget-object v7, v9, v16

    .line 588
    .local v7, argument:Ljava/lang/String;
    sget-object v25, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    .line 589
    .local v11, bytes:[B
    array-length v0, v11

    move/from16 v25, v0

    const v26, 0xffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_a

    .line 590
    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string v26, "Argument is too large"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 578
    .end local v7           #argument:Ljava/lang/String;
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v11           #bytes:[B
    .end local v20           #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v25

    .line 581
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_9

    .line 592
    .restart local v7       #argument:Ljava/lang/String;
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v11       #bytes:[B
    .restart local v20       #out:Ljava/io/OutputStream;
    :cond_a
    array-length v0, v11

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 593
    array-length v0, v11

    move/from16 v25, v0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 594
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 595
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 587
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 597
    .end local v7           #argument:Ljava/lang/String;
    .end local v11           #bytes:[B
    :cond_b
    const/16 v25, 0xff

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 598
    const/16 v25, 0xff

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 599
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v25, v0

    aget-object v25, v25, v15

    invoke-virtual/range {v25 .. v25}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v17

    .line 605
    .local v17, in:Ljava/io/InputStream;
    :goto_b
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->read()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    .line 611
    :goto_c
    const/16 v25, 0x1

    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_b

    .line 625
    .end local v6           #address:Landroid/net/LocalSocketAddress;
    .end local v8           #arguments:[Ljava/lang/String;
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v12           #daemon:Ljava/lang/String;
    .end local v17           #in:Ljava/io/InputStream;
    .end local v18           #key:Ljava/lang/String;
    .end local v20           #out:Ljava/io/OutputStream;
    :cond_c
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 616
    :cond_d
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_f

    .line 618
    const/4 v15, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v15, v0, :cond_c

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v12, v25, v15

    .line 620
    .restart local v12       #daemon:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v15

    if-eqz v25, :cond_e

    const-string v25, "running"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "init.svc."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_e

    .line 622
    new-instance v25, Ljava/lang/IllegalStateException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " is dead"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 618
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 629
    .end local v12           #daemon:Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v25

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v10, v0, [B

    .line 630
    .local v10, buffer:[B
    new-instance v25, Ljava/io/FileInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v25

    array-length v0, v10

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    .line 631
    new-instance v25, Ljava/lang/IllegalStateException;

    const-string v26, "Cannot read the state"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 633
    :cond_10
    new-instance v25, Ljava/lang/String;

    sget-object v26, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v10, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v26, "\n"

    const/16 v27, -0x1

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v21

    .line 634
    .local v21, parameters:[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_11

    .line 635
    new-instance v25, Ljava/lang/IllegalStateException;

    const-string v26, "Cannot parse the state"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 639
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v26, v21, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v26, v21, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_13

    .line 644
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-object v26, v21, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    .line 648
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_15

    .line 649
    :cond_14
    const/16 v25, 0x3

    aget-object v25, v21, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 650
    .local v13, dnsServers:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_15

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    const-string v26, " "

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 656
    .end local v13           #dnsServers:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v25, v0

    if-eqz v25, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_17

    .line 657
    :cond_16
    const/16 v25, 0x4

    aget-object v25, v21, v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 658
    .local v23, searchDomains:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_17

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    const-string v26, " "

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 664
    .end local v23           #searchDomains:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v27, v0

    #calls: Lcom/android/server/connectivity/Vpn;->jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static/range {v25 .. v27}, Lcom/android/server/connectivity/Vpn;->access$300(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const-string v25, "LegacyVpnRunner"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "execute(): set routes "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " on "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v25, "vpn"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Landroid/net/NetworkUtils;->addRoutingTable(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v5, 0x0

    .line 671
    .local v5, Vpn_Subnet:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_18

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 673
    :cond_18
    move-object v9, v5

    .restart local v9       #arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    const/16 v16, 0x0

    :goto_e
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_19

    aget-object v4, v9, v16

    .line 674
    .local v4, Subnet_temp:Ljava/lang/String;
    const-string v25, "LegacyVpnRunner"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "set subnet "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-string v25, "all"

    const-string v26, "vpn"

    const/16 v27, 0x9c4

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v4, v1, v2}, Landroid/net/NetworkUtils;->addRoutingRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->Vpn_Routing_Rule_Amount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/connectivity/Vpn;->Vpn_Routing_Rule_Amount:I

    .line 677
    const-string v25, "LegacyVpnRunner"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Vpn_Routing_Rule_Amount: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->Vpn_Routing_Rule_Amount:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    .line 683
    .end local v4           #Subnet_temp:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 685
    const/16 v25, 0x0

    :try_start_9
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    #calls: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_1a

    .line 689
    new-instance v25, Ljava/lang/IllegalStateException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is gone"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 700
    :catchall_1
    move-exception v25

    monitor-exit v26
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v25
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 693
    :cond_1a
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    #setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$202(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/util/List;Ljava/util/List;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mConfig:Lcom/android/internal/net/VpnConfig;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    #calls: Lcom/android/server/connectivity/Vpn;->showNotification(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 697
    const-string v25, "LegacyVpnRunner"

    const-string v27, "Connected!"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    const/16 v27, 0x3

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;Lcom/android/internal/net/VpnConfig;)Landroid/app/PendingIntent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    .line 700
    monitor-exit v26
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_23

    .line 707
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v9

    move/from16 v19, v0

    const/16 v16, 0x0

    :goto_f
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_23

    aget-object v12, v9, v16

    .line 708
    .restart local v12       #daemon:Ljava/lang/String;
    const-string v25, "ctl.stop"

    move-object/from16 v0, v25

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    add-int/lit8 v16, v16, 0x1

    goto :goto_f

    .line 713
    .end local v5           #Vpn_Subnet:[Ljava/lang/String;
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v10           #buffer:[B
    .end local v12           #daemon:Ljava/lang/String;
    .end local v15           #i:I
    .end local v16           #i$:I
    .end local v19           #len$:I
    .end local v21           #parameters:[Ljava/lang/String;
    .end local v22           #restart:Z
    .end local v24           #state:Ljava/io/File;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    .line 715
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x5

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 706
    :cond_1d
    throw v25

    .line 608
    .restart local v6       #address:Landroid/net/LocalSocketAddress;
    .restart local v8       #arguments:[Ljava/lang/String;
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v12       #daemon:Ljava/lang/String;
    .restart local v15       #i:I
    .restart local v16       #i$:I
    .restart local v17       #in:Ljava/io/InputStream;
    .restart local v18       #key:Ljava/lang/String;
    .restart local v19       #len$:I
    .restart local v20       #out:Ljava/io/OutputStream;
    .restart local v22       #restart:Z
    .restart local v24       #state:Ljava/io/File;
    :catch_2
    move-exception v25

    goto/16 :goto_c

    .line 713
    .end local v6           #address:Landroid/net/LocalSocketAddress;
    .end local v8           #arguments:[Ljava/lang/String;
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v12           #daemon:Ljava/lang/String;
    .end local v15           #i:I
    .end local v16           #i$:I
    .end local v17           #in:Ljava/io/InputStream;
    .end local v18           #key:Ljava/lang/String;
    .end local v19           #len$:I
    .end local v20           #out:Ljava/io/OutputStream;
    .end local v22           #restart:Z
    .end local v24           #state:Ljava/io/File;
    .restart local v14       #e:Ljava/lang/Exception;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_20

    .line 715
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    .end local v14           #e:Ljava/lang/Exception;
    :goto_10
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 718
    :cond_20
    return-void

    .line 713
    .restart local v16       #i$:I
    .restart local v19       #len$:I
    .restart local v22       #restart:Z
    .restart local v24       #state:Ljava/io/File;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_20

    .line 715
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    goto :goto_10

    .line 713
    .restart local v5       #Vpn_Subnet:[Ljava/lang/String;
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v10       #buffer:[B
    .restart local v15       #i:I
    .restart local v21       #parameters:[Ljava/lang/String;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_20

    .line 715
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    move-object/from16 v25, v0

    goto :goto_10
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 3
    .parameter "interfaze"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const-string v0, "LegacyVpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy VPN is going down with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 471
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 5

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    .line 476
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .local v0, arr$:[Landroid/net/LocalSocket;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 478
    .local v3, socket:Landroid/net/LocalSocket;
    :try_start_0
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    :catch_0
    move-exception v4

    goto :goto_1

    .line 483
    .end local v3           #socket:Landroid/net/LocalSocket;
    :cond_0
    return-void
.end method

.method public getInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$200(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 489
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 497
    const-string v0, "LegacyVpnRunner"

    const-string v1, "Waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1

    .line 499
    :try_start_0
    const-string v0, "LegacyVpnRunner"

    const-string v2, "Executing"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->execute()V

    .line 501
    monitor-exit v1

    .line 502
    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
