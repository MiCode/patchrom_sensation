.class public final Lcom/android/camera/EventManager;
.super Lcom/android/camera/ThreadDependencyObject;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/EventManager$EventHandlerProfilingInfo;,
        Lcom/android/camera/EventManager$EventProfilingInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final PRINT_EVENT_HANDLERS:Z = false

#the value of this static final field might be set in the static constructor
.field private static final PRINT_EVENT_LOGS:Z = false

#the value of this static final field might be set in the static constructor
.field private static final PRINT_EVENT_RAISER:Z = false

.field private static final PROFILING_TAG:Ljava/lang/String; = "EventProfiling"

.field private static final TAG:Ljava/lang/String; = "EventManager"

.field private static final m_LogExcludeEvents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_EventProfilingInfos:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/EventManager$EventProfilingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Handler:Landroid/os/Handler;

.field private final m_Handlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/IEventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_IsClosed:Z

.field private m_IsProfilingEnabled:Z

.field private final m_Owner:Lcom/android/camera/IEventManagerOwner;

.field private m_ProfilingStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    sget v0, Lcom/android/camera/debug/Debugger;->GENERIC_DEBUG_LEVEL:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/camera/EventManager;->PRINT_EVENT_LOGS:Z

    .line 50
    sget v0, Lcom/android/camera/debug/Debugger;->GENERIC_DEBUG_LEVEL:I

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/camera/EventManager;->PRINT_EVENT_RAISER:Z

    .line 51
    sget v0, Lcom/android/camera/debug/Debugger;->GENERIC_DEBUG_LEVEL:I

    if-lt v0, v3, :cond_2

    :goto_2
    sput-boolean v1, Lcom/android/camera/EventManager;->PRINT_EVENT_HANDLERS:Z

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/camera/EventManager;->m_LogExcludeEvents:Ljava/util/HashSet;

    .line 70
    sget-object v0, Lcom/android/camera/EventManager;->m_LogExcludeEvents:Ljava/util/HashSet;

    const-string v1, "DeviceOrientation.Changed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/camera/EventManager;->m_LogExcludeEvents:Ljava/util/HashSet;

    const-string v1, "PortraitMode.Changed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/camera/EventManager;->m_LogExcludeEvents:Ljava/util/HashSet;

    const-string v1, "Query.CanTriggerFocus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/camera/EventManager;->m_LogExcludeEvents:Ljava/util/HashSet;

    const-string v1, "SensorValue.RotateChanged"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    return-void

    :cond_0
    move v0, v2

    .line 49
    goto :goto_0

    :cond_1
    move v0, v2

    .line 50
    goto :goto_1

    :cond_2
    move v1, v2

    .line 51
    goto :goto_2
.end method

.method public constructor <init>(Lcom/android/camera/IEventManagerOwner;)V
    .locals 2
    .parameter "owner"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/camera/ThreadDependencyObject;-><init>()V

    .line 58
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/EventManager;->m_Handlers:Ljava/util/Hashtable;

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "owner is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/EventManager;->m_Handler:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/android/camera/EventManager;->m_Owner:Lcom/android/camera/IEventManagerOwner;

    .line 85
    return-void
.end method

.method private raiseEvent(Lcom/android/camera/Event;Ljava/util/ArrayList;)V
    .locals 23
    .parameter "event"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/Event;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/IEventHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p2, handlerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/IEventHandler;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/Event;->getName()Ljava/lang/String;

    move-result-object v12

    .line 300
    .local v12, name:Ljava/lang/String;
    sget-object v19, Lcom/android/camera/EventManager;->m_LogExcludeEvents:Ljava/util/HashSet;

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 301
    .local v8, isLogExcluded:Z
    sget-boolean v19, Lcom/android/camera/EventManager;->PRINT_EVENT_LOGS:Z

    if-eqz v19, :cond_0

    if-nez v8, :cond_0

    .line 303
    sget-boolean v19, Lcom/android/camera/EventManager;->PRINT_EVENT_RAISER:Z

    if-eqz v19, :cond_7

    .line 305
    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Lcom/android/camera/debug/Debugger;->getMethodCaller(I)Ljava/lang/StackTraceElement;

    move-result-object v10

    .line 306
    .local v10, methodCaller:Ljava/lang/StackTraceElement;
    const/16 v19, 0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v10, v0, v1}, Lcom/android/camera/debug/Debugger;->getStackTraceElementString(Ljava/lang/StackTraceElement;ZZ)Ljava/lang/String;

    move-result-object v11

    .line 307
    .local v11, methodCallerInfo:Ljava/lang/String;
    const-string v19, "EventManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Event \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' is raising by "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v10           #methodCaller:Ljava/lang/StackTraceElement;
    .end local v11           #methodCallerInfo:Ljava/lang/String;
    :cond_0
    :goto_0
    const-wide/16 v17, 0x0

    .line 316
    .local v17, totalTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/EventManager;->m_IsProfilingEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    .line 317
    const/4 v3, 0x0

    .line 329
    .local v3, eventProfilingInfo:Lcom/android/camera/EventManager$EventProfilingInfo;
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/camera/InterruptableEvent;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v7, p1

    .line 331
    check-cast v7, Lcom/android/camera/InterruptableEvent;

    .line 332
    .local v7, intEvent:Lcom/android/camera/InterruptableEvent;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_4

    .line 335
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/IEventHandler;

    .line 338
    .local v4, handler:Lcom/android/camera/IEventHandler;
    sget-boolean v19, Lcom/android/camera/EventManager;->PRINT_EVENT_HANDLERS:Z

    if-eqz v19, :cond_2

    if-nez v8, :cond_2

    .line 339
    const-string v19, "EventManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Calling handler["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " for event \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/EventManager;->m_IsProfilingEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 346
    const/4 v5, 0x0

    .line 347
    .local v5, handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    const-wide/16 v15, 0x0

    .line 361
    .local v15, time:J
    :goto_3
    invoke-interface {v4, v7}, Lcom/android/camera/IEventHandler;->onEvent(Lcom/android/camera/Event;)V

    .line 364
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/EventManager;->m_IsProfilingEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v15, v19, v15

    .line 367
    iget-wide v0, v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->callingCount:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x1

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    iput-wide v0, v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->callingCount:J

    .line 368
    iget-wide v0, v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->totalHandlingTime:J

    move-wide/from16 v19, v0

    add-long v19, v19, v15

    move-wide/from16 v0, v19

    iput-wide v0, v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->totalHandlingTime:J

    .line 369
    add-long v17, v17, v15

    .line 373
    :cond_3
    invoke-virtual {v7}, Lcom/android/camera/InterruptableEvent;->isHandled()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 375
    sget-boolean v19, Lcom/android/camera/EventManager;->PRINT_EVENT_HANDLERS:Z

    if-eqz v19, :cond_4

    if-nez v8, :cond_4

    .line 376
    const-string v19, "EventManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Event \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' is interrupted by handler["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .end local v4           #handler:Lcom/android/camera/IEventHandler;
    .end local v5           #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    .end local v7           #intEvent:Lcom/android/camera/InterruptableEvent;
    .end local v15           #time:J
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/EventManager;->m_IsProfilingEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 484
    iget-wide v0, v3, Lcom/android/camera/EventManager$EventProfilingInfo;->raisingCount:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x1

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    iput-wide v0, v3, Lcom/android/camera/EventManager$EventProfilingInfo;->raisingCount:J

    .line 485
    iget-wide v0, v3, Lcom/android/camera/EventManager$EventProfilingInfo;->totalHandlingTime:J

    move-wide/from16 v19, v0

    add-long v19, v19, v17

    move-wide/from16 v0, v19

    iput-wide v0, v3, Lcom/android/camera/EventManager$EventProfilingInfo;->totalHandlingTime:J

    .line 486
    iget-wide v0, v3, Lcom/android/camera/EventManager$EventProfilingInfo;->totalHandlerCount:J

    move-wide/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    iput-wide v0, v3, Lcom/android/camera/EventManager$EventProfilingInfo;->totalHandlerCount:J

    .line 490
    :cond_5
    sget-boolean v19, Lcom/android/camera/EventManager;->PRINT_EVENT_LOGS:Z

    if-eqz v19, :cond_6

    if-nez v8, :cond_6

    .line 491
    const-string v19, "EventManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Event \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' is raised"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_6
    return-void

    .line 310
    .end local v3           #eventProfilingInfo:Lcom/android/camera/EventManager$EventProfilingInfo;
    .end local v6           #i:I
    .end local v17           #totalTime:J
    :cond_7
    const-string v19, "EventManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Event \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' is raising"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    .restart local v17       #totalTime:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/EventManager;->m_EventProfilingInfos:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/EventManager$EventProfilingInfo;

    .line 321
    .restart local v3       #eventProfilingInfo:Lcom/android/camera/EventManager$EventProfilingInfo;
    if-nez v3, :cond_1

    .line 323
    new-instance v3, Lcom/android/camera/EventManager$EventProfilingInfo;

    .end local v3           #eventProfilingInfo:Lcom/android/camera/EventManager$EventProfilingInfo;
    invoke-direct {v3, v12}, Lcom/android/camera/EventManager$EventProfilingInfo;-><init>(Ljava/lang/String;)V

    .line 324
    .restart local v3       #eventProfilingInfo:Lcom/android/camera/EventManager$EventProfilingInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/EventManager;->m_EventProfilingInfos:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 351
    .restart local v4       #handler:Lcom/android/camera/IEventHandler;
    .restart local v6       #i:I
    .restart local v7       #intEvent:Lcom/android/camera/InterruptableEvent;
    :cond_9
    iget-object v0, v3, Lcom/android/camera/EventManager$EventProfilingInfo;->handlerInfos:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;

    .line 352
    .restart local v5       #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    if-nez v5, :cond_a

    .line 354
    new-instance v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;

    .end local v5           #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    invoke-direct {v5, v12, v4}, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;-><init>(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 355
    .restart local v5       #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    iget-object v0, v3, Lcom/android/camera/EventManager$EventProfilingInfo;->handlerInfos:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .restart local v15       #time:J
    goto/16 :goto_3

    .line 332
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 381
    .end local v4           #handler:Lcom/android/camera/IEventHandler;
    .end local v5           #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    .end local v6           #i:I
    .end local v7           #intEvent:Lcom/android/camera/InterruptableEvent;
    .end local v15           #time:J
    :cond_c
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/camera/ConditionalQueryEvent;

    move/from16 v19, v0

    if-eqz v19, :cond_15

    move-object/from16 v2, p1

    .line 383
    check-cast v2, Lcom/android/camera/ConditionalQueryEvent;

    .line 384
    .local v2, condEvent:Lcom/android/camera/ConditionalQueryEvent;
    invoke-virtual {v2}, Lcom/android/camera/ConditionalQueryEvent;->getConditionType()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    const/4 v9, 0x1

    .line 385
    .local v9, isOrOperation:Z
    :goto_5
    invoke-virtual {v2}, Lcom/android/camera/ConditionalQueryEvent;->getTargetResult()Z

    move-result v14

    .line 386
    .local v14, targetCondition:Z
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_4

    .line 389
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/IEventHandler;

    .line 390
    .restart local v4       #handler:Lcom/android/camera/IEventHandler;
    sget-boolean v19, Lcom/android/camera/EventManager;->PRINT_EVENT_HANDLERS:Z

    if-eqz v19, :cond_d

    if-nez v8, :cond_d

    .line 391
    const-string v19, "EventManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Calling handler["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " for event \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/EventManager;->m_IsProfilingEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    .line 398
    const/4 v5, 0x0

    .line 399
    .restart local v5       #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    const-wide/16 v15, 0x0

    .line 413
    .restart local v15       #time:J
    :goto_7
    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/android/camera/IEventHandler;->onEvent(Lcom/android/camera/Event;)V

    .line 416
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/EventManager;->m_IsProfilingEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v15, v19, v15

    .line 419
    iget-wide v0, v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->callingCount:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x1

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    iput-wide v0, v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->callingCount:J

    .line 420
    iget-wide v0, v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->totalHandlingTime:J

    move-wide/from16 v19, v0

    add-long v19, v19, v15

    move-wide/from16 v0, v19

    iput-wide v0, v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->totalHandlingTime:J

    .line 421
    add-long v17, v17, v15

    .line 425
    :cond_e
    invoke-virtual {v2}, Lcom/android/camera/ConditionalQueryEvent;->hasResult()Z

    move-result v19

    if-eqz v19, :cond_14

    .line 427
    if-eqz v9, :cond_13

    invoke-virtual {v2}, Lcom/android/camera/ConditionalQueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-nez v19, :cond_12

    const/4 v13, 0x1

    .line 428
    .local v13, result:Z
    :goto_8
    if-eq v13, v14, :cond_14

    .line 430
    sget-boolean v19, Lcom/android/camera/EventManager;->PRINT_EVENT_HANDLERS:Z

    if-eqz v19, :cond_4

    if-nez v8, :cond_4

    .line 431
    const-string v19, "EventManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Event \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' is interrupted by handler["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 384
    .end local v4           #handler:Lcom/android/camera/IEventHandler;
    .end local v5           #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    .end local v6           #i:I
    .end local v9           #isOrOperation:Z
    .end local v13           #result:Z
    .end local v14           #targetCondition:Z
    .end local v15           #time:J
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 403
    .restart local v4       #handler:Lcom/android/camera/IEventHandler;
    .restart local v6       #i:I
    .restart local v9       #isOrOperation:Z
    .restart local v14       #targetCondition:Z
    :cond_10
    iget-object v0, v3, Lcom/android/camera/EventManager$EventProfilingInfo;->handlerInfos:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;

    .line 404
    .restart local v5       #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    if-nez v5, :cond_11

    .line 406
    new-instance v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;

    .end local v5           #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    invoke-direct {v5, v12, v4}, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;-><init>(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 407
    .restart local v5       #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    iget-object v0, v3, Lcom/android/camera/EventManager$EventProfilingInfo;->handlerInfos:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .restart local v15       #time:J
    goto/16 :goto_7

    .line 427
    :cond_12
    const/4 v13, 0x0

    goto :goto_8

    :cond_13
    invoke-virtual {v2}, Lcom/android/camera/ConditionalQueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto :goto_8

    .line 386
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 439
    .end local v2           #condEvent:Lcom/android/camera/ConditionalQueryEvent;
    .end local v4           #handler:Lcom/android/camera/IEventHandler;
    .end local v5           #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    .end local v6           #i:I
    .end local v9           #isOrOperation:Z
    .end local v14           #targetCondition:Z
    .end local v15           #time:J
    :cond_15
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_9
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_4

    .line 442
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/IEventHandler;

    .line 445
    .restart local v4       #handler:Lcom/android/camera/IEventHandler;
    sget-boolean v19, Lcom/android/camera/EventManager;->PRINT_EVENT_HANDLERS:Z

    if-eqz v19, :cond_16

    if-nez v8, :cond_16

    .line 446
    const-string v19, "EventManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Calling handler["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " for event \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/EventManager;->m_IsProfilingEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_18

    .line 453
    const/4 v5, 0x0

    .line 454
    .restart local v5       #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    const-wide/16 v15, 0x0

    .line 468
    .restart local v15       #time:J
    :goto_a
    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/android/camera/IEventHandler;->onEvent(Lcom/android/camera/Event;)V

    .line 471
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/EventManager;->m_IsProfilingEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_17

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v15, v19, v15

    .line 474
    iget-wide v0, v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->callingCount:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x1

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    iput-wide v0, v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->callingCount:J

    .line 475
    iget-wide v0, v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->totalHandlingTime:J

    move-wide/from16 v19, v0

    add-long v19, v19, v15

    move-wide/from16 v0, v19

    iput-wide v0, v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->totalHandlingTime:J

    .line 476
    add-long v17, v17, v15

    .line 439
    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_9

    .line 458
    .end local v5           #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    .end local v15           #time:J
    :cond_18
    iget-object v0, v3, Lcom/android/camera/EventManager$EventProfilingInfo;->handlerInfos:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;

    .line 459
    .restart local v5       #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    if-nez v5, :cond_19

    .line 461
    new-instance v5, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;

    .end local v5           #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    invoke-direct {v5, v12, v4}, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;-><init>(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 462
    .restart local v5       #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    iget-object v0, v3, Lcom/android/camera/EventManager$EventProfilingInfo;->handlerInfos:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .restart local v15       #time:J
    goto :goto_a
.end method


# virtual methods
.method public addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V
    .locals 4
    .parameter "name"
    .parameter "handler"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/camera/EventManager;->threadAccessCheck()V

    .line 96
    iget-boolean v1, p0, Lcom/android/camera/EventManager;->m_IsClosed:Z

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "EventManager"

    const-string v2, "Event manager is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 103
    :cond_0
    if-nez p1, :cond_1

    .line 105
    const-string v1, "name"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_1
    if-nez p2, :cond_2

    .line 110
    const-string v1, "handler"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "handler is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_2
    sget-boolean v1, Lcom/android/camera/EventManager;->PRINT_EVENT_HANDLERS:Z

    if-eqz v1, :cond_3

    .line 116
    const-string v1, "EventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to event \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/android/camera/EventManager;->m_Handlers:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    iget-object v1, p0, Lcom/android/camera/EventManager;->m_Handlers:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 127
    .local v0, handlerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/IEventHandler;>;"
    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-void

    .line 124
    .end local v0           #handlerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/IEventHandler;>;"
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .restart local v0       #handlerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/IEventHandler;>;"
    iget-object v1, p0, Lcom/android/camera/EventManager;->m_Handlers:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addEventHandlerAsync(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V
    .locals 3
    .parameter "name"
    .parameter "handler"

    .prologue
    .line 132
    sget-boolean v0, Lcom/android/camera/EventManager;->PRINT_EVENT_HANDLERS:Z

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "EventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' asynchronously"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EventManager;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EventManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/EventManager$1;-><init>(Lcom/android/camera/EventManager;Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    const-string v0, "EventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' asynchronously"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    return-void
.end method

.method public close()V
    .locals 5

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/camera/EventManager;->threadAccessCheck()V

    .line 155
    iget-boolean v3, p0, Lcom/android/camera/EventManager;->m_IsClosed:Z

    if-eqz v3, :cond_0

    .line 175
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/android/camera/EventManager;->m_Handlers:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 160
    .local v1, handlerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/IEventHandler;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 161
    .end local v1           #handlerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/IEventHandler;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/camera/EventManager;->m_Handlers:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 164
    iget-boolean v3, p0, Lcom/android/camera/EventManager;->m_IsProfilingEnabled:Z

    if-eqz v3, :cond_3

    .line 166
    const-string v3, "EventProfiling"

    const-string v4, "Stop event profiling because event manager is closed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v3, p0, Lcom/android/camera/EventManager;->m_EventProfilingInfos:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/EventManager$EventProfilingInfo;

    .line 168
    .local v0, eventInfo:Lcom/android/camera/EventManager$EventProfilingInfo;
    iget-object v3, v0, Lcom/android/camera/EventManager$EventProfilingInfo;->handlerInfos:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    goto :goto_2

    .line 169
    .end local v0           #eventInfo:Lcom/android/camera/EventManager$EventProfilingInfo;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/EventManager;->m_EventProfilingInfos:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 170
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/EventManager;->m_IsProfilingEnabled:Z

    .line 174
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/EventManager;->m_IsClosed:Z

    goto :goto_0
.end method

.method public getOwner()Lcom/android/camera/IEventManagerOwner;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/EventManager;->m_Owner:Lcom/android/camera/IEventManagerOwner;

    return-object v0
.end method

.method public final hasHandlers(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 193
    const-string v0, "name"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EventManager;->m_Handlers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/camera/EventManager;->m_IsClosed:Z

    return v0
.end method

.method public printProfilingLogs()V
    .locals 17

    .prologue
    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/EventManager;->threadAccessCheck()V

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/camera/EventManager;->m_ProfilingStartTime:J

    sub-long v5, v9, v11

    .line 221
    .local v5, profilingTime:J
    const-string v9, "EventProfiling"

    const-string v10, "[START]"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/camera/EventManager;->m_IsProfilingEnabled:Z

    if-nez v9, :cond_0

    .line 226
    const-string v9, "EventProfiling"

    const-string v10, "No profiling data, please start event profiling first"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void

    .line 231
    :cond_0
    const-wide/16 v7, 0x0

    .line 232
    .local v7, totalEventTime:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/EventManager;->m_EventProfilingInfos:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/EventManager$EventProfilingInfo;

    .line 233
    .local v1, eventProfilingInfo:Lcom/android/camera/EventManager$EventProfilingInfo;
    iget-wide v9, v1, Lcom/android/camera/EventManager$EventProfilingInfo;->totalHandlingTime:J

    add-long/2addr v7, v9

    goto :goto_1

    .line 234
    .end local v1           #eventProfilingInfo:Lcom/android/camera/EventManager$EventProfilingInfo;
    :cond_1
    const-string v9, "EventProfiling"

    const-string v10, "Total event time = %dms (%.2f%%)"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    long-to-double v13, v7

    const-wide/high16 v15, 0x4059

    mul-double/2addr v13, v15

    long-to-double v15, v5

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/EventManager;->m_EventProfilingInfos:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/EventManager$EventProfilingInfo;

    .line 240
    .restart local v1       #eventProfilingInfo:Lcom/android/camera/EventManager$EventProfilingInfo;
    const-string v9, "EventProfiling"

    const-string v10, ">>> %s [Raising count = %d][Total time = %dms (%.2f%%)][Average handler count = %.1f]"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v1, Lcom/android/camera/EventManager$EventProfilingInfo;->eventName:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-wide v13, v1, Lcom/android/camera/EventManager$EventProfilingInfo;->totalHandlerCount:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-wide v13, v1, Lcom/android/camera/EventManager$EventProfilingInfo;->totalHandlingTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-wide v13, v1, Lcom/android/camera/EventManager$EventProfilingInfo;->totalHandlingTime:J

    long-to-double v13, v13

    const-wide/high16 v15, 0x4059

    mul-double/2addr v13, v15

    long-to-double v15, v7

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    iget-wide v13, v1, Lcom/android/camera/EventManager$EventProfilingInfo;->totalHandlerCount:J

    long-to-double v13, v13

    iget-wide v15, v1, Lcom/android/camera/EventManager$EventProfilingInfo;->raisingCount:J

    long-to-double v15, v15

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v9, v1, Lcom/android/camera/EventManager$EventProfilingInfo;->handlerInfos:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;

    .line 251
    .local v2, handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    const-string v9, "EventProfiling"

    const-string v10, "    * %s [Calling count = %d][Total time = %dms (%.2f%%)][Average time = %.1fms]"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v2, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->handler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-wide v13, v2, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->callingCount:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-wide v13, v2, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->totalHandlingTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-wide v13, v2, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->totalHandlingTime:J

    long-to-double v13, v13

    const-wide/high16 v15, 0x4059

    mul-double/2addr v13, v15

    iget-wide v15, v1, Lcom/android/camera/EventManager$EventProfilingInfo;->totalHandlingTime:J

    long-to-double v15, v15

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    iget-wide v13, v2, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->totalHandlingTime:J

    long-to-double v13, v13

    iget-wide v15, v2, Lcom/android/camera/EventManager$EventHandlerProfilingInfo;->callingCount:J

    long-to-double v15, v15

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 262
    .end local v1           #eventProfilingInfo:Lcom/android/camera/EventManager$EventProfilingInfo;
    .end local v2           #handlerProfilingInfo:Lcom/android/camera/EventManager$EventHandlerProfilingInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    const-string v9, "EventProfiling"

    const-string v10, "[END]"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public raiseEvent(Lcom/android/camera/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/camera/EventManager;->threadAccessCheck()V

    .line 288
    if-nez p1, :cond_0

    .line 289
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "event is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/android/camera/EventManager;->m_Handlers:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/android/camera/Event;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 293
    .local v0, handlerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/IEventHandler;>;"
    if-eqz v0, :cond_1

    .line 294
    invoke-direct {p0, p1, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;Ljava/util/ArrayList;)V

    .line 295
    :cond_1
    return-void
.end method

.method public raiseEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 273
    const-string v1, "name"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 274
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/camera/EventManager;->m_Handlers:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 279
    .local v0, handlerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/IEventHandler;>;"
    if-eqz v0, :cond_1

    .line 280
    new-instance v1, Lcom/android/camera/Event;

    invoke-direct {v1, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;Ljava/util/ArrayList;)V

    .line 281
    :cond_1
    return-void
.end method

.method public removeEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)Z
    .locals 5
    .parameter "name"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 500
    invoke-virtual {p0}, Lcom/android/camera/EventManager;->threadAccessCheck()V

    .line 503
    iget-boolean v2, p0, Lcom/android/camera/EventManager;->m_IsClosed:Z

    if-eqz v2, :cond_0

    .line 505
    const-string v1, "EventManager"

    const-string v2, "Event manager is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 510
    :cond_0
    if-nez p1, :cond_1

    .line 512
    const-string v1, "name"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 513
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :cond_1
    if-nez p2, :cond_2

    .line 517
    const-string v1, "handler"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 518
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "handler is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    :cond_2
    sget-boolean v2, Lcom/android/camera/EventManager;->PRINT_EVENT_HANDLERS:Z

    if-eqz v2, :cond_3

    .line 523
    const-string v2, "EventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove handler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from event \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_3
    iget-object v2, p0, Lcom/android/camera/EventManager;->m_Handlers:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 529
    iget-object v2, p0, Lcom/android/camera/EventManager;->m_Handlers:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 530
    .local v0, handlerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/IEventHandler;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 532
    sget-boolean v2, Lcom/android/camera/EventManager;->PRINT_EVENT_HANDLERS:Z

    if-eqz v2, :cond_4

    .line 533
    const-string v2, "EventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not added to event \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .end local v0           #handlerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/IEventHandler;>;"
    :cond_4
    :goto_0
    return v1

    .line 536
    .restart local v0       #handlerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/IEventHandler;>;"
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 537
    iget-object v1, p0, Lcom/android/camera/EventManager;->m_Handlers:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    .line 540
    .end local v0           #handlerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/IEventHandler;>;"
    :cond_7
    sget-boolean v2, Lcom/android/camera/EventManager;->PRINT_EVENT_HANDLERS:Z

    if-eqz v2, :cond_4

    .line 541
    const-string v2, "EventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not added to event \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeEventHandlerAsync(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V
    .locals 3
    .parameter "name"
    .parameter "handler"

    .prologue
    .line 547
    sget-boolean v0, Lcom/android/camera/EventManager;->PRINT_EVENT_HANDLERS:Z

    if-eqz v0, :cond_0

    .line 548
    const-string v0, "EventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' asynchronously"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EventManager;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EventManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/EventManager$2;-><init>(Lcom/android/camera/EventManager;Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    const-string v0, "EventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' asynchronously"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_1
    return-void
.end method

.method public startProfiling()V
    .locals 2

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/android/camera/EventManager;->threadAccessCheck()V

    .line 569
    iget-boolean v0, p0, Lcom/android/camera/EventManager;->m_IsProfilingEnabled:Z

    if-nez v0, :cond_0

    .line 571
    const-string v0, "EventProfiling"

    const-string v1, "Start event profiling"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/EventManager;->m_IsProfilingEnabled:Z

    .line 573
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/EventManager;->m_EventProfilingInfos:Ljava/util/Hashtable;

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/EventManager;->m_ProfilingStartTime:J

    .line 578
    :goto_0
    return-void

    .line 577
    :cond_0
    const-string v0, "EventProfiling"

    const-string v1, "Event profiling is already started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopProfiling()V
    .locals 2

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/android/camera/EventManager;->threadAccessCheck()V

    .line 586
    iget-boolean v0, p0, Lcom/android/camera/EventManager;->m_IsProfilingEnabled:Z

    if-eqz v0, :cond_0

    .line 588
    const-string v0, "EventProfiling"

    const-string v1, "Stop event profiling"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/EventManager;->m_IsProfilingEnabled:Z

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EventManager;->m_EventProfilingInfos:Ljava/util/Hashtable;

    .line 594
    :goto_0
    return-void

    .line 593
    :cond_0
    const-string v0, "EventProfiling"

    const-string v1, "Event profiling is already stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
