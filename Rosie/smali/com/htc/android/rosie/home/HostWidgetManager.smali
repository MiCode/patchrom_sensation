.class public Lcom/htc/android/rosie/home/HostWidgetManager;
.super Ljava/lang/Object;
.source "HostWidgetManager.java"

# interfaces
.implements Lcom/htc/android/rosie/widget/WidgetManager$Host;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/home/HostWidgetManager$Worker;,
        Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;,
        Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;,
        Lcom/htc/android/rosie/home/HostWidgetManager$Owner;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final NEXT_ID_FILE_NAME:Ljava/lang/String; = "widget-manager-data"

.field private static final localLOGD:Z

.field private static sNextWidgetId:I


# instance fields
.field private mBkgWorker:Lcom/htc/android/rosie/home/HostWidgetManager$Worker;

.field private mBkgWorkerFactory:Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;

.field mFxShortcutItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/FxItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIdSaver:Ljava/lang/Runnable;

.field private final mManager:Lcom/htc/android/rosie/widget/WidgetManager;

.field private final mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

.field private mResultReceiverId:I

.field private mSensorListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/hardware/SensorEventListener;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/htc/android/rosie/home/HostWidgetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    .line 72
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/android/rosie/home/HostWidgetManager;->localLOGD:Z

    .line 90
    const/high16 v0, 0x100

    sput v0, Lcom/htc/android/rosie/home/HostWidgetManager;->sNextWidgetId:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/android/rosie/home/HostWidgetManager$Owner;)V
    .locals 7
    .parameter "owner"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    .line 595
    new-instance v3, Lcom/htc/android/rosie/home/HostWidgetManager$1;

    invoke-direct {v3, p0}, Lcom/htc/android/rosie/home/HostWidgetManager$1;-><init>(Lcom/htc/android/rosie/home/HostWidgetManager;)V

    iput-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mIdSaver:Ljava/lang/Runnable;

    .line 661
    new-instance v3, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;

    const-string v4, "background works"

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;-><init>(Ljava/lang/String;ILcom/htc/android/rosie/home/HostWidgetManager$1;)V

    iput-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mBkgWorkerFactory:Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;

    .line 673
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mSensorListeners:Ljava/util/Map;

    .line 783
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mResultReceiverId:I

    .line 1088
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    .line 79
    iput-object p1, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    .line 80
    invoke-static {}, Lcom/htc/android/rosie/widget/WidgetManager;->getInstance()Lcom/htc/android/rosie/widget/WidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    .line 82
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-interface {v3}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    .local v0, ctx:Landroid/content/Context;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 84
    .local v1, start:J
    invoke-static {v0}, Lcom/htc/launcher/LauncherModel;->getNextHostWidgetManagerId(Landroid/content/Context;)I

    move-result v3

    sput v3, Lcom/htc/android/rosie/home/HostWidgetManager;->sNextWidgetId:I

    .line 85
    sget-boolean v3, Lcom/htc/android/rosie/home/HostWidgetManager;->localLOGD:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HostWidgetManager sNextWidgetId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/android/rosie/home/HostWidgetManager;->sNextWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " costs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/rosie/home/HostWidgetManager;)Lcom/htc/android/rosie/home/HostWidgetManager$Owner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/htc/android/rosie/home/HostWidgetManager;->localLOGD:Z

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/htc/android/rosie/home/HostWidgetManager;->sNextWidgetId:I

    return v0
.end method

.method private clonWidgetInfoWithNewId(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;I)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    .locals 9
    .parameter "widgetInfo"
    .parameter "id"

    .prologue
    .line 1184
    if-nez p1, :cond_0

    .line 1185
    const/4 v0, 0x0

    .line 1196
    :goto_0
    return-object v0

    .line 1186
    :cond_0
    new-instance v0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mProvider:Landroid/content/ComponentName;
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$1500(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v1

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v2

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mSpanX:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$1600(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v3

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mSpanY:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$1700(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v4

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v6

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$500(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v7

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$600(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v8

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;IIIIII)V

    .line 1195
    .local v0, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mStoreId:J
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$1200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->setStoreId(J)V

    goto :goto_0
.end method

.method private findWidgetInfo(I)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    .locals 4
    .parameter "id"

    .prologue
    .line 768
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v3

    .line 769
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    .line 770
    .local v1, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 771
    monitor-exit v3

    .line 773
    .end local v1           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit v3

    goto :goto_0

    .line 774
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private findWidgetInfo(III)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    .locals 7
    .parameter "containerId"
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 626
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v3

    .line 627
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    .line 628
    .local v1, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v2

    if-ne v2, p1, :cond_0

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$500(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v2

    if-ne v2, p2, :cond_0

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$600(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 630
    monitor-exit v3

    .line 635
    .end local v1           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :goto_0
    return-object v1

    .line 632
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    sget-object v2, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "can\'t find widget %d %d %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const/4 v1, 0x0

    goto :goto_0

    .line 632
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private openSensorManager()Z
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 676
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/HostWidgetManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 677
    sget-object v0, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "new a SensorManager in HostWidgetManager"

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const/16 v0, 0xa

    sget-object v1, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->showStack(ILjava/lang/String;)Ljava/lang/String;

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeWidget(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/htc/android/rosie/widget/WidgetManager;->pauseWidget(Lcom/htc/android/rosie/widget/Widget$Host;IZ)Z

    .line 211
    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/htc/android/rosie/widget/WidgetManager;->stopWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z

    .line 212
    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/htc/android/rosie/widget/WidgetManager;->destroyWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z

    .line 213
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 215
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :try_start_2
    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/htc/android/rosie/widget/WidgetManager;->unbindWidgetId(Lcom/htc/android/rosie/widget/Widget$Host;I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 225
    :cond_0
    return-void

    .line 215
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, ex:Ljava/lang/RuntimeException;
    sget-object v1, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove widget("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 220
    sget-boolean v1, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v1, :cond_0

    .line 221
    throw v0
.end method

.method private saveWidgetId()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mIdSaver:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mIdSaver:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 623
    :cond_0
    return-void
.end method

.method private updateFxShortcutOrientation(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    .line 1140
    sget-object v2, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG] DesktopItemController.updateFxShortcutOrientation(orientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 1143
    :cond_0
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    monitor-enter v3

    .line 1144
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/FxItem;

    .line 1145
    .local v1, item:Lcom/htc/launcher/FxItem;
    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;

    .end local v1           #item:Lcom/htc/launcher/FxItem;
    invoke-virtual {v1, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxShortcutButton;->updateOrientation(I)V

    goto :goto_1

    .line 1147
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public addFxShortcutItem(Lcom/htc/launcher/FxItem;)Z
    .locals 7
    .parameter "fxItem"

    .prologue
    const/4 v4, 0x0

    .line 1090
    sget-object v5, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[EDIT_DEBUG] DesktopItemController.addFxShortcutItem()"

    invoke-static {v5, v6}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget-object v5, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    if-nez v5, :cond_0

    .line 1102
    :goto_0
    return v4

    .line 1094
    :cond_0
    iget-object v5, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/FxItem;

    .line 1095
    .local v3, item:Lcom/htc/launcher/FxItem;
    invoke-virtual {v3}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/launcher/ItemInfo;->getId()J

    move-result-wide v1

    .line 1096
    .local v1, id:J
    invoke-virtual {p1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/launcher/ItemInfo;->getId()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 1100
    .end local v1           #id:J
    .end local v3           #item:Lcom/htc/launcher/FxItem;
    :cond_2
    sget-object v4, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[EDIT_DEBUG] DesktopItemController.addFxShortcutItem() done!"

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v4, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public declared-synchronized addWidget(Landroid/content/ComponentName;Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;IIILandroid/content/Intent;)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    .locals 18
    .parameter "provider"
    .parameter "style"
    .parameter "containerId"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "intent"

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/htc/android/rosie/widget/WidgetManager;->registerProvider(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/ComponentName;)Lcom/htc/android/rosie/widget/WidgetProvider;

    move-result-object v5

    .line 117
    .local v5, p:Lcom/htc/android/rosie/widget/WidgetProvider;
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    invoke-virtual {v5}, Lcom/htc/android/rosie/widget/WidgetProvider;->getPackageContext()Landroid/content/Context;

    move-result-object v3

    const/4 v7, 0x1

    invoke-static {v3, v7}, Lcom/htc/launcher/Utilities;->enforceConfigOrientation(Landroid/content/Context;I)V

    .line 120
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-virtual {v5}, Lcom/htc/android/rosie/widget/WidgetProvider;->getPackageContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->addResourcePath(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/rosie/home/HostWidgetManager;->allocWidgetId()I

    move-result v4

    .line 123
    .local v4, id:I
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->component:Landroid/content/ComponentName;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    const/4 v14, 0x0

    .line 126
    .local v14, ok:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    const/4 v8, 0x0

    move-object/from16 v6, p6

    move-object/from16 v7, p0

    invoke-virtual/range {v3 .. v8}, Lcom/htc/android/rosie/widget/WidgetManager;->bindWidgetId(ILcom/htc/android/rosie/widget/WidgetProvider;Landroid/content/Intent;Lcom/htc/android/rosie/widget/Widget$Host;Ljava/util/Properties;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/htc/android/rosie/widget/Widget$WidgetRuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v14

    .line 138
    if-eqz v14, :cond_2

    .line 139
    :try_start_2
    new-instance v6, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->component:Landroid/content/ComponentName;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget v9, v3, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sx:I

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget v10, v3, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->sy:I

    const/4 v12, 0x0

    move-object/from16 v7, p1

    move v11, v4

    invoke-direct/range {v6 .. v12}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;IIILcom/htc/android/rosie/home/HostWidgetManager$1;)V

    .line 140
    .local v6, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-interface {v3}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->getInvalidId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->setStoreId(J)V

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/htc/android/rosie/widget/WidgetManager;->getWidgetScene(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v16

    .line 142
    .local v16, scene:Lcom/htc/fusion/fx/FxScene;
    if-eqz v16, :cond_1

    .line 143
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v6, v0, v1, v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->addToContainer(III)V

    .line 144
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/htc/android/rosie/widget/WidgetManager;->startWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/htc/android/rosie/widget/WidgetManager;->restoreWidgetState(Lcom/htc/android/rosie/widget/Widget$Host;I)Z

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/htc/android/rosie/widget/WidgetManager;->callWidgetOnPostCreate(Lcom/htc/android/rosie/widget/Widget$Host;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    .end local v6           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    .end local v16           #scene:Lcom/htc/fusion/fx/FxScene;
    :goto_0
    monitor-exit p0

    return-object v6

    .line 127
    :catch_0
    move-exception v13

    .line 128
    .local v13, cnfe:Ljava/lang/ClassNotFoundException;
    :try_start_5
    sget-object v3, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to bind widget: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v13}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v6, 0x0

    goto :goto_0

    .line 130
    .end local v13           #cnfe:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v17

    .line 131
    .local v17, wre:Lcom/htc/android/rosie/widget/Widget$WidgetRuntimeException;
    sget-object v3, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to bind widget: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/rosie/widget/Widget$WidgetRuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v6, 0x0

    goto :goto_0

    .line 133
    .end local v17           #wre:Lcom/htc/android/rosie/widget/Widget$WidgetRuntimeException;
    :catch_2
    move-exception v15

    .line 134
    .local v15, re:Ljava/lang/RuntimeException;
    sget-object v3, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to bind widget: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 135
    const/4 v6, 0x0

    goto :goto_0

    .line 146
    .end local v15           #re:Ljava/lang/RuntimeException;
    .restart local v6       #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    .restart local v16       #scene:Lcom/htc/fusion/fx/FxScene;
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 114
    .end local v4           #id:I
    .end local v5           #p:Lcom/htc/android/rosie/widget/WidgetProvider;
    .end local v6           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    .end local v14           #ok:Z
    .end local v16           #scene:Lcom/htc/fusion/fx/FxScene;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 152
    .restart local v4       #id:I
    .restart local v5       #p:Lcom/htc/android/rosie/widget/WidgetProvider;
    .restart local v6       #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    .restart local v14       #ok:Z
    .restart local v16       #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_1
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v4}, Lcom/htc/android/rosie/widget/WidgetManager;->unbindWidgetId(Lcom/htc/android/rosie/widget/Widget$Host;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 155
    .end local v6           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    .end local v16           #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public addWidget(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z
    .locals 11
    .parameter "widgetInfo"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 159
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getProvider()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/htc/android/rosie/widget/WidgetManager;->registerProvider(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/ComponentName;)Lcom/htc/android/rosie/widget/WidgetProvider;

    move-result-object v2

    .line 160
    .local v2, p:Lcom/htc/android/rosie/widget/WidgetProvider;
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-virtual {v2}, Lcom/htc/android/rosie/widget/WidgetProvider;->getPackageContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->addResourcePath(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {v2}, Lcom/htc/android/rosie/widget/WidgetProvider;->getPackageContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/htc/launcher/Utilities;->enforceConfigOrientation(Landroid/content/Context;I)V

    .line 166
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 168
    const/4 v7, 0x0

    .line 170
    .local v7, ok:Z
    :try_start_0
    sget-boolean v0, Lcom/htc/android/rosie/home/HostWidgetManager;->localLOGD:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind with data:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mData:Ljava/util/Properties;
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$100(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Ljava/util/Properties;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v1

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mData:Ljava/util/Properties;
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$100(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Ljava/util/Properties;

    move-result-object v5

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/widget/WidgetManager;->bindWidgetId(ILcom/htc/android/rosie/widget/WidgetProvider;Landroid/content/Intent;Lcom/htc/android/rosie/widget/Widget$Host;Ljava/util/Properties;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 176
    const/4 v8, 0x0

    .line 177
    .local v8, scene:Lcom/htc/fusion/fx/FxScene;
    if-eqz v7, :cond_2

    .line 178
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htc/android/rosie/widget/WidgetManager;->getWidgetScene(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v8

    .line 179
    if-eqz v8, :cond_3

    .line 180
    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v1

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htc/android/rosie/widget/WidgetManager;->startWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z

    .line 184
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htc/android/rosie/widget/WidgetManager;->restoreWidgetState(Lcom/htc/android/rosie/widget/Widget$Host;I)Z

    .line 185
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htc/android/rosie/widget/WidgetManager;->callWidgetOnPostCreate(Lcom/htc/android/rosie/widget/Widget$Host;I)Z

    .line 190
    :cond_2
    :goto_0
    if-eqz v8, :cond_4

    move v0, v9

    .end local v8           #scene:Lcom/htc/fusion/fx/FxScene;
    :goto_1
    return v0

    .line 172
    :catch_0
    move-exception v6

    .line 173
    .local v6, e:Ljava/lang/Throwable;
    sget-object v0, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to bind widget: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 174
    goto :goto_1

    .line 182
    .end local v6           #e:Ljava/lang/Throwable;
    .restart local v8       #scene:Lcom/htc/fusion/fx/FxScene;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htc/android/rosie/widget/WidgetManager;->unbindWidgetId(Lcom/htc/android/rosie/widget/Widget$Host;I)V

    goto :goto_0

    :cond_4
    move v0, v10

    .line 190
    goto :goto_1
.end method

.method public allocWidgetId()I
    .locals 4

    .prologue
    .line 93
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v2

    .line 94
    :try_start_0
    sget v1, Lcom/htc/android/rosie/home/HostWidgetManager;->sNextWidgetId:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 95
    sget-object v1, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "out of widget id!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget v1, Lcom/htc/android/rosie/home/HostWidgetManager;->sNextWidgetId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/android/rosie/home/HostWidgetManager;->sNextWidgetId:I

    .line 98
    :cond_0
    sget v0, Lcom/htc/android/rosie/home/HostWidgetManager;->sNextWidgetId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/htc/android/rosie/home/HostWidgetManager;->sNextWidgetId:I

    .line 99
    .local v0, id:I
    monitor-exit v2

    .line 100
    return v0

    .line 99
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkWidgetId(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    .locals 9
    .parameter "widgetInfo"

    .prologue
    .line 1165
    move-object v3, p1

    .line 1166
    .local v3, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    const/4 v0, 0x0

    .line 1167
    .local v0, count:I
    iget-object v6, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v6

    .line 1168
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 1169
    .local v4, widgetSize:I
    iget-object v5, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    .line 1170
    .local v2, info:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v5

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v7

    if-ne v5, v7, :cond_0

    .line 1171
    sget-object v5, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WIDGET_DEBUG] Widget["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " WidgetId("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") same as Widget["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/HostWidgetManager;->allocWidgetId()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/htc/android/rosie/home/HostWidgetManager;->clonWidgetInfoWithNewId(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;I)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object p1

    .line 1173
    sget-object v5, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[WIDGET_DEBUG] Allocate New Id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for Widget"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager;->updateWidgetInDatabase(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z

    .line 1175
    move-object v3, p1

    .line 1177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1179
    .end local v2           #info:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :cond_1
    monitor-exit v6

    .line 1180
    return-object v3

    .line 1179
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #widgetSize:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "path"
    .parameter "visible"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-interface {v0, p1, p2}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized deleteWidgetFromDatabase(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->deleteWidgetInfo(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroyScene(Lcom/htc/fusion/fx/FxScene;)V
    .locals 1
    .parameter "scene"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->destroyScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 740
    return-void
.end method

.method public dispatchActivityResult(IILandroid/content/Intent;)Z
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 793
    sget-object v0, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchActivityResult requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mResultReceiverId:I

    if-ne v0, v6, :cond_0

    .line 795
    const/4 v0, 0x0

    .line 798
    :goto_0
    return v0

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    iget v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mResultReceiverId:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/rosie/widget/WidgetManager;->dispatchActivityResult(Lcom/htc/android/rosie/widget/Widget$Host;IIILandroid/content/Intent;)Z

    .line 797
    iput v6, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mResultReceiverId:I

    .line 798
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public editWidget(III)V
    .locals 3
    .parameter "containerId"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 574
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/rosie/home/HostWidgetManager;->findWidgetInfo(III)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v0

    .line 575
    .local v0, found:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    if-eqz v0, :cond_0

    .line 576
    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v0}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/htc/android/rosie/widget/WidgetManager;->editWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z

    .line 577
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/htc/android/rosie/home/HostWidgetManager;->removeAllWidgets()V

    .line 589
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mBkgWorkerFactory:Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->close()V

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mBkgWorkerFactory:Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;

    .line 591
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-interface {v0}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getFxShortcutItem(J)Lcom/htc/launcher/FxItem;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1120
    sget-object v3, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EDIT_DEBUG] DesktopItemController.getFxShortcutItem("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 1129
    :goto_0
    return-object v1

    .line 1123
    :cond_0
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/FxItem;

    .line 1124
    .local v1, item:Lcom/htc/launcher/FxItem;
    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/ItemInfo;->getId()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    .line 1125
    sget-object v2, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG] DesktopItemController.getFxShortcutItem("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") got!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #item:Lcom/htc/launcher/FxItem;
    :cond_2
    move-object v1, v2

    .line 1129
    goto :goto_0
.end method

.method public getFxShortcutItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/launcher/FxItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1151
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    monitor-enter v2

    .line 1152
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1153
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    monitor-exit v2

    return-object v0

    .line 1154
    .end local v0           #ret:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/FxItem;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFxShortcutScene(JZ)Lcom/htc/fusion/fx/FxScene;
    .locals 2
    .parameter "id"
    .parameter "isPort"

    .prologue
    .line 1133
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/rosie/home/HostWidgetManager;->getFxShortcutItem(J)Lcom/htc/launcher/FxItem;

    move-result-object v0

    .line 1134
    .local v0, fxItem:Lcom/htc/launcher/FxItem;
    if-nez v0, :cond_0

    .line 1135
    const/4 v1, 0x0

    .line 1136
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/htc/launcher/FxItem;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    goto :goto_0
.end method

.method public getFxWidgetItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1158
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v2

    .line 1159
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1160
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;>;"
    monitor-exit v2

    return-object v0

    .line 1161
    .end local v0           #ret:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOwner()Lcom/htc/android/rosie/home/HostWidgetManager$Owner;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    return-object v0
.end method

.method public getWidgetPosition(I)[I
    .locals 4
    .parameter "id"

    .prologue
    .line 802
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager;->findWidgetInfo(I)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v1

    .line 803
    .local v1, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    if-nez v1, :cond_0

    .line 804
    const/4 v0, 0x0

    .line 809
    :goto_0
    return-object v0

    .line 806
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 807
    .local v0, pos:[I
    const/4 v2, 0x0

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$500(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v3

    aput v3, v0, v2

    .line 808
    const/4 v2, 0x1

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$600(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v3

    aput v3, v0, v2

    goto :goto_0
.end method

.method public getWidgetScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "id"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    invoke-virtual {v0, p0, p1}, Lcom/htc/android/rosie/widget/WidgetManager;->getWidgetScene(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetScene(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Lcom/htc/fusion/fx/FxScene;
    .locals 2
    .parameter "info"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/htc/android/rosie/widget/WidgetManager;->getWidgetScene(Lcom/htc/android/rosie/widget/Widget$Host;I)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method public getWorker()Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mBkgWorkerFactory:Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    return-object v0
.end method

.method public getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "callback"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mBkgWorkerFactory:Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;

    invoke-virtual {v0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager$WorkerFactory;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    return-object v0
.end method

.method public isEditable(III)Z
    .locals 4
    .parameter "containerId"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 566
    sget-boolean v1, Lcom/htc/android/rosie/home/HostWidgetManager;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "HostWidgetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEditable("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/rosie/home/HostWidgetManager;->findWidgetInfo(III)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v0

    .line 568
    .local v0, found:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    if-eqz v0, :cond_1

    .line 569
    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v0}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/htc/android/rosie/widget/WidgetManager;->isEditable(Lcom/htc/android/rosie/widget/Widget$Host;I)Z

    move-result v1

    .line 570
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized loadInstanceData(I)Ljava/util/Properties;
    .locals 2
    .parameter "id"

    .prologue
    .line 763
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager;->findWidgetInfo(I)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v0

    .line 764
    .local v0, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getData()Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 763
    .end local v0           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public moveWidgetAt(IIIIII)V
    .locals 7
    .parameter "fromContainerId"
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toContainerId"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 489
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v3

    .line 490
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    .line 491
    .local v1, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v2

    if-ne v2, p1, :cond_0

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$500(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v2

    if-ne v2, p2, :cond_0

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$600(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v2

    if-ne v2, p3, :cond_0

    .line 495
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 496
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    #setter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v1, p4}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$402(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;I)I

    .line 499
    #setter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I
    invoke-static {v1, p5}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$502(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;I)I

    .line 500
    #setter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I
    invoke-static {v1, p6}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$602(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;I)I

    .line 501
    monitor-exit v3

    .line 507
    .end local v1           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :goto_0
    return-void

    .line 504
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    sget-object v2, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "can\'t find widget %d %d %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public notifyAllWidgetsConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfiguration"

    .prologue
    .line 267
    iget-object v5, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v5

    .line 268
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    .line 269
    .local v3, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 270
    .local v1, start:J
    iget-object v4, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v3}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v6

    invoke-virtual {v4, p0, v6, p1}, Lcom/htc/android/rosie/widget/WidgetManager;->callWidgetOnConfigurationChanged(Lcom/htc/android/rosie/widget/Widget$Host;ILandroid/content/res/Configuration;)Z

    .line 271
    sget-boolean v4, Lcom/htc/android/rosie/home/HostWidgetManager;->localLOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "PREF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callWidgetOnConfigurationChanged "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #start:J
    .end local v3           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v4}, Lcom/htc/android/rosie/home/HostWidgetManager;->updateFxShortcutOrientation(I)V

    .line 276
    return-void
.end method

.method public onOrientationChangeComplete(I)V
    .locals 10
    .parameter "containerId"

    .prologue
    .line 279
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 280
    .local v1, msg:Landroid/os/Message;
    const/4 v5, 0x3

    iput v5, v1, Landroid/os/Message;->what:I

    .line 281
    iget-object v6, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v6

    .line 282
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    .line 283
    .local v4, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v4}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v5

    if-ne p1, v5, :cond_0

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 285
    .local v2, start:J
    iget-object v5, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v4}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v7

    invoke-virtual {v5, p0, v7, v1}, Lcom/htc/android/rosie/widget/WidgetManager;->callWidgetOnHostMessage(Lcom/htc/android/rosie/widget/Widget$Host;ILandroid/os/Message;)Z

    .line 286
    sget-boolean v5, Lcom/htc/android/rosie/home/HostWidgetManager;->localLOGD:Z

    if-eqz v5, :cond_0

    const-string v5, "PREF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onOrientationChangeComplete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #start:J
    .end local v4           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    return-void
.end method

.method public onResumeInKeyguard(I)V
    .locals 8
    .parameter "containerId"

    .prologue
    const/4 v4, 0x0

    .line 293
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 294
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v1, Landroid/os/Message;->what:I

    .line 295
    iget-object v5, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v5

    .line 296
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    .line 297
    .local v2, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 298
    iget v6, v1, Landroid/os/Message;->arg1:I

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v3

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    or-int/2addr v3, v6

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 299
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 300
    iget v3, v1, Landroid/os/Message;->arg2:I

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$500(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v6

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$600(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v7

    add-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0x3

    or-int/2addr v3, v6

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 301
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v6

    invoke-virtual {v3, p0, v6, v1}, Lcom/htc/android/rosie/widget/WidgetManager;->callWidgetOnHostMessage(Lcom/htc/android/rosie/widget/Widget$Host;ILandroid/os/Message;)Z

    goto :goto_0

    .line 303
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :cond_0
    move v3, v4

    .line 298
    goto :goto_1

    .line 303
    .end local v2           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    return-void
.end method

.method public onUserPresent(IZ)V
    .locals 7
    .parameter "containerId"
    .parameter "onWorkspace"

    .prologue
    const/4 v4, 0x0

    .line 307
    iget-object v5, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v5

    .line 308
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 309
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->what:I

    .line 311
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    .line 312
    .local v2, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 313
    if-eqz p2, :cond_0

    .line 314
    iget v6, v1, Landroid/os/Message;->arg1:I

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v3

    if-ne p1, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    or-int/2addr v3, v6

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 316
    :cond_0
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 317
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v6

    invoke-virtual {v3, p0, v6, v1}, Lcom/htc/android/rosie/widget/WidgetManager;->callWidgetOnHostMessage(Lcom/htc/android/rosie/widget/Widget$Host;ILandroid/os/Message;)Z

    goto :goto_0

    .line 319
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :cond_1
    move v3, v4

    .line 314
    goto :goto_1

    .line 319
    .end local v2           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    return-void
.end method

.method public pauseAllWidgets(Z)V
    .locals 10
    .parameter "saveState"

    .prologue
    .line 249
    iget-object v6, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v6

    .line 250
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    .local v4, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 253
    .local v2, start:J
    iget-object v5, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v4}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v7

    invoke-virtual {v5, p0, v7, p1}, Lcom/htc/android/rosie/widget/WidgetManager;->pauseWidget(Lcom/htc/android/rosie/widget/Widget$Host;IZ)Z

    .line 254
    const-string v5, "PREF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pausing widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {v4}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " costs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 255
    .end local v2           #start:J
    :catch_0
    move-exception v0

    .line 256
    .local v0, ex:Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v5, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pause widget("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {v4}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") fail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 258
    sget-boolean v5, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v5, :cond_0

    .line 259
    throw v0

    .line 263
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    return-void
.end method

.method public pauseWidget(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 1200
    sget-object v0, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WIDGET_DEBUG] pauseWidget("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/htc/android/rosie/widget/WidgetManager;->pauseWidget(Lcom/htc/android/rosie/widget/Widget$Host;IZ)Z

    .line 1202
    return-void
.end method

.method public pauseWidgetAt(III)V
    .locals 5
    .parameter "conatinerId"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 552
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/rosie/home/HostWidgetManager;->findWidgetInfo(III)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v1

    .line 553
    .local v1, found:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    if-eqz v1, :cond_0

    .line 555
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, p0, v3, v4}, Lcom/htc/android/rosie/widget/WidgetManager;->pauseWidget(Lcom/htc/android/rosie/widget/Widget$Host;IZ)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :cond_0
    return-void

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, ex:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause widget("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 559
    sget-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v2, :cond_0

    .line 560
    throw v0
.end method

.method public pauseWidgets(IZ)V
    .locals 7
    .parameter "containerId"
    .parameter "saveState"

    .prologue
    .line 446
    iget-object v4, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v4

    .line 447
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    .local v2, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :try_start_1
    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 450
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v5

    invoke-virtual {v3, p0, v5, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->pauseWidget(Lcom/htc/android/rosie/widget/Widget$Host;IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, ex:Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v3, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pause widget("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") fail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 454
    sget-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v3, :cond_0

    .line 455
    throw v0

    .line 459
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    return-void
.end method

.method public registerSensorListener(Landroid/hardware/SensorEventListener;II)Landroid/hardware/Sensor;
    .locals 6
    .parameter "listener"
    .parameter "type"
    .parameter "rate"

    .prologue
    const/4 v3, 0x0

    .line 696
    invoke-direct {p0}, Lcom/htc/android/rosie/home/HostWidgetManager;->openSensorManager()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v2, v3

    .line 713
    :cond_0
    :goto_0
    return-object v2

    .line 699
    :cond_1
    iget-object v4, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, p2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 700
    .local v1, s:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_3

    :cond_2
    move-object v2, v3

    .line 701
    goto :goto_0

    .line 702
    :cond_3
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 703
    .local v2, sensor:Landroid/hardware/Sensor;
    iget-object v4, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, p1, v2, p3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 704
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mSensorListeners:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 705
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v0, :cond_4

    .line 706
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .restart local v0       #l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mSensorListeners:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    sget-boolean v3, Lcom/htc/android/rosie/home/HostWidgetManager;->localLOGD:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for sensor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_5
    move-object v2, v3

    .line 713
    goto :goto_0
.end method

.method public removeAllWidgets()V
    .locals 7

    .prologue
    .line 639
    iget-object v4, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v4

    .line 640
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    .local v2, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :try_start_1
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, p0, v5, v6}, Lcom/htc/android/rosie/widget/WidgetManager;->pauseWidget(Lcom/htc/android/rosie/widget/Widget$Host;IZ)Z

    .line 643
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v5

    invoke-virtual {v3, p0, v5}, Lcom/htc/android/rosie/widget/WidgetManager;->stopWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z

    .line 644
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v5

    invoke-virtual {v3, p0, v5}, Lcom/htc/android/rosie/widget/WidgetManager;->destroyWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z

    .line 645
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v5

    invoke-virtual {v3, p0, v5}, Lcom/htc/android/rosie/widget/WidgetManager;->unbindWidgetId(Lcom/htc/android/rosie/widget/Widget$Host;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, ex:Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v3, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove widget("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") fail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 649
    sget-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v3, :cond_0

    .line 650
    throw v0

    .line 655
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 654
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 655
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 657
    iget-object v4, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    monitor-enter v4

    .line 658
    :try_start_4
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 659
    monitor-exit v4

    .line 660
    return-void

    .line 659
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public removeFxShortcutItem(J)Z
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1106
    sget-object v3, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EDIT_DEBUG] DesktopItemController.removeFxShortcutItem("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return v2

    .line 1110
    :cond_1
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/FxItem;

    .line 1111
    .local v1, item:Lcom/htc/launcher/FxItem;
    invoke-virtual {v1}, Lcom/htc/launcher/FxItem;->getInfo()Lcom/htc/launcher/ItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/launcher/ItemInfo;->getId()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_2

    .line 1112
    sget-object v2, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EDIT_DEBUG] DesktopItemController.removeFxShortcutItem("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") remove!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mFxShortcutItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public removeWidget(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager;->findWidgetInfo(I)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v0

    .line 202
    .local v0, info:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/android/rosie/home/HostWidgetManager;->removeWidget(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)V

    goto :goto_0
.end method

.method public removeWidget(III)V
    .locals 1
    .parameter "containerId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/rosie/home/HostWidgetManager;->findWidgetInfo(III)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v0

    .line 195
    .local v0, info:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/android/rosie/home/HostWidgetManager;->removeWidget(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)V

    goto :goto_0
.end method

.method public resumeWidgetAt(III)V
    .locals 5
    .parameter "conatinerId"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 538
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/rosie/home/HostWidgetManager;->findWidgetInfo(III)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v1

    .line 540
    .local v1, found:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    if-eqz v1, :cond_0

    .line 541
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v3

    invoke-virtual {v2, p0, v3}, Lcom/htc/android/rosie/widget/WidgetManager;->resumeWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :cond_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, ex:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume widget("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 545
    sget-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v2, :cond_0

    .line 546
    throw v0
.end method

.method public resumeWidgets(I)V
    .locals 1
    .parameter "containerId"

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/rosie/home/HostWidgetManager;->resumeWidgets(IZ)V

    .line 375
    return-void
.end method

.method public resumeWidgets(IZ)V
    .locals 12
    .parameter "containerId"
    .parameter "sort"

    .prologue
    .line 378
    iget-object v9, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v9

    .line 379
    if-eqz p2, :cond_7

    .line 383
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 384
    .local v0, currentPageWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;>;"
    iget-object v8, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    .line 385
    .local v7, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v7}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v8

    if-ne v8, p1, :cond_0

    .line 387
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 388
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    .end local v0           #currentPageWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v7           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 390
    .restart local v0       #currentPageWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v7       #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :cond_1
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 391
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v8}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v8

    mul-int/lit8 v10, v8, 0x64

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I
    invoke-static {v8}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$600(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v8

    mul-int/lit8 v8, v8, 0xa

    add-int/2addr v10, v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I
    invoke-static {v8}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$500(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v8

    add-int v6, v10, v8

    .line 395
    .local v6, localPriority:I
    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v7}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I
    invoke-static {v7}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$600(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v10

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v8, v10

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I
    invoke-static {v7}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$500(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v10

    add-int v4, v8, v10

    .line 397
    .local v4, iteratorPriority:I
    if-ge v6, v4, :cond_2

    .line 398
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-interface {v0, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 400
    :cond_2
    if-le v6, v4, :cond_4

    .line 401
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_3

    .line 402
    const/4 v8, 0x0

    invoke-interface {v0, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 390
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 405
    :cond_4
    const-string v8, "LOG_TAG"

    const-string v10, "resumeWidgetserror: widget overlay issue"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 411
    .end local v3           #idx:I
    .end local v4           #iteratorPriority:I
    .end local v6           #localPriority:I
    .end local v7           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    .restart local v7       #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :try_start_2
    iget-object v8, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v7}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v10

    invoke-virtual {v8, p0, v10}, Lcom/htc/android/rosie/widget/WidgetManager;->resumeWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, ex:Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v8, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resume widget("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {v7}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") fail"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 417
    sget-boolean v8, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v8, :cond_6

    .line 418
    throw v1

    .line 424
    .end local v0           #currentPageWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;>;"
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v7           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :cond_7
    iget-object v8, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 426
    .restart local v7       #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :try_start_4
    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v7}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v8

    if-ne v8, p1, :cond_8

    .line 427
    iget-object v8, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v7}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v10

    invoke-virtual {v8, p0, v10}, Lcom/htc/android/rosie/widget/WidgetManager;->resumeWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 428
    :catch_1
    move-exception v1

    .line 429
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    :try_start_5
    sget-object v8, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resume widget("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {v7}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") fail"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 431
    sget-boolean v8, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v8, :cond_8

    .line 432
    throw v1

    .line 436
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .end local v7           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :cond_9
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 438
    sget-boolean v8, Lcom/htc/launcher/Launcher;->isTipShowed:Z

    if-nez v8, :cond_a

    sget-boolean v8, Lcom/htc/launcher/Launcher;->newStyleTip:Z

    if-eqz v8, :cond_a

    .line 439
    sget-object v8, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "start shortcut tip when widgets resumed"

    invoke-static {v8, v9}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v8, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-interface {v8}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/htc/launcher/Launcher;

    .line 441
    .local v5, launcher:Lcom/htc/launcher/Launcher;
    invoke-virtual {v5}, Lcom/htc/launcher/Launcher;->startShortcutTip()V

    .line 443
    .end local v5           #launcher:Lcom/htc/launcher/Launcher;
    :cond_a
    return-void
.end method

.method public sendEmptyHostMessage(I)V
    .locals 10
    .parameter "what"

    .prologue
    .line 323
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 324
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 325
    iget-object v6, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v6

    .line 326
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    .line 327
    .local v4, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 328
    .local v2, start:J
    iget-object v5, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v4}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v7

    invoke-virtual {v5, p0, v7, v1}, Lcom/htc/android/rosie/widget/WidgetManager;->callWidgetOnHostMessage(Lcom/htc/android/rosie/widget/Widget$Host;ILandroid/os/Message;)Z

    .line 329
    const-string v5, "PREF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendEmptyHostMessage "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {v4}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " costs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #start:J
    .end local v4           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    return-void
.end method

.method public setWidgetVisibility(IZ)V
    .locals 5
    .parameter "containerId"
    .parameter "visible"

    .prologue
    .line 463
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v3

    .line 464
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    .line 465
    .local v1, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 466
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v4

    invoke-virtual {v2, p0, v4, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->setWidgetVisibility(Lcom/htc/android/rosie/widget/Widget$Host;IZ)Z

    goto :goto_0

    .line 468
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->startActivityForResult(Landroid/content/Intent;I)V

    .line 781
    return-void
.end method

.method public startActivityForResult(ILandroid/content/Intent;I)V
    .locals 3
    .parameter "id"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 787
    sget-object v0, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityForResult id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iput p1, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mResultReceiverId:I

    .line 789
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-interface {v0, p2, p3}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->startActivityForResult(Landroid/content/Intent;I)V

    .line 790
    return-void
.end method

.method public startWidgetAt(III)V
    .locals 5
    .parameter "containerId"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 510
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/rosie/home/HostWidgetManager;->findWidgetInfo(III)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v1

    .line 512
    .local v1, found:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    if-eqz v1, :cond_0

    .line 513
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v3

    invoke-virtual {v2, p0, v3}, Lcom/htc/android/rosie/widget/WidgetManager;->startWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :cond_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, ex:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start widget("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 517
    sget-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v2, :cond_0

    .line 518
    throw v0
.end method

.method public startWidgetsIn(I)V
    .locals 10
    .parameter "containerId"

    .prologue
    .line 337
    iget-object v6, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v6

    .line 338
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    .line 339
    .local v4, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v4}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ne v5, p1, :cond_0

    .line 342
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 343
    .local v2, start:J
    iget-object v5, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v4}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v7

    invoke-virtual {v5, p0, v7}, Lcom/htc/android/rosie/widget/WidgetManager;->startWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z

    .line 344
    const-string v5, "PREF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startWidget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {v4}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " costs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 345
    .end local v2           #start:J
    :catch_0
    move-exception v0

    .line 346
    .local v0, ex:Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v5, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start widget("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {v4}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") fail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 348
    sget-boolean v5, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v5, :cond_0

    .line 349
    throw v0

    .line 353
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 354
    return-void
.end method

.method stopListenToSensors()V
    .locals 4

    .prologue
    .line 684
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v3, :cond_0

    .line 693
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mSensorListeners:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 688
    .local v2, listeners:Ljava/util/Set;,"Ljava/util/Set<Landroid/hardware/SensorEventListener;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorEventListener;

    .line 689
    .local v1, l:Landroid/hardware/SensorEventListener;
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1

    .line 691
    .end local v1           #l:Landroid/hardware/SensorEventListener;
    :cond_1
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mSensorListeners:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 692
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mSensorManager:Landroid/hardware/SensorManager;

    goto :goto_0
.end method

.method public stopWidgetAt(III)V
    .locals 5
    .parameter "conatinerId"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 524
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/rosie/home/HostWidgetManager;->findWidgetInfo(III)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v1

    .line 526
    .local v1, found:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    if-eqz v1, :cond_0

    .line 527
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v3

    invoke-virtual {v2, p0, v3}, Lcom/htc/android/rosie/widget/WidgetManager;->stopWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_0
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, ex:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop widget("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 531
    sget-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v2, :cond_0

    .line 532
    throw v0
.end method

.method public stopWidgets(I)V
    .locals 7
    .parameter "containerId"

    .prologue
    .line 357
    iget-object v4, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v4

    .line 358
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .local v2, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :try_start_1
    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 361
    iget-object v3, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v5

    invoke-virtual {v3, p0, v5}, Lcom/htc/android/rosie/widget/WidgetManager;->stopWidget(Lcom/htc/android/rosie/widget/Widget$Host;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, ex:Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v3, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stop widget("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") fail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 365
    sget-boolean v3, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v3, :cond_0

    .line 366
    throw v0

    .line 370
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 371
    return-void
.end method

.method public declared-synchronized storeInstanceData(ILjava/util/Properties;)V
    .locals 6
    .parameter "id"
    .parameter "data"

    .prologue
    .line 752
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager;->findWidgetInfo(I)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v1

    .line 753
    .local v1, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    if-eqz v1, :cond_1

    .line 754
    sget-boolean v2, Lcom/htc/android/rosie/home/HostWidgetManager;->localLOGD:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widget#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " save data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_0
    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mStoreId:J
    invoke-static {v1}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$1200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-interface {v4}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->getInvalidId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 756
    .local v0, inDatabase:Z
    :goto_0
    invoke-virtual {v1, p2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->saveData(Ljava/util/Properties;)V

    .line 757
    if-eqz v0, :cond_1

    .line 758
    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-interface {v2, v1}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->updateWidgetInfo(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    .end local v0           #inDatabase:Z
    :cond_1
    monitor-exit p0

    return-void

    .line 755
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 752
    .end local v1           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized storeWidgetToDatabase(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->storeWidgetInfo(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public surpressLongClick(Z)V
    .locals 1
    .parameter "surpress"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->surpressLongClick(Z)V

    .line 748
    return-void
.end method

.method public surpressSlide(Z)V
    .locals 1
    .parameter "surpress"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->surpressSlide(Z)V

    .line 744
    return-void
.end method

.method public tiltWidgets(IF)V
    .locals 10
    .parameter "containerId"
    .parameter "tilt"

    .prologue
    .line 472
    iget-object v7, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    monitor-enter v7

    .line 473
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mWidgets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    .line 474
    .local v5, wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v5}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 476
    .local v3, start:J
    iget-object v6, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mManager:Lcom/htc/android/rosie/widget/WidgetManager;

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I
    invoke-static {v5}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v8

    invoke-virtual {v6, p0, v8, p2}, Lcom/htc/android/rosie/widget/WidgetManager;->setWidgetTilt(Lcom/htc/android/rosie/widget/Widget$Host;IF)Z

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v3

    .line 478
    .local v0, diff:J
    const-wide/16 v8, 0xa

    cmp-long v6, v0, v8

    if-lez v6, :cond_0

    .line 479
    sget-boolean v6, Lcom/htc/android/rosie/home/HostWidgetManager;->localLOGD:Z

    if-eqz v6, :cond_0

    const-string v6, "PREF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setWidgetTilt "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->getName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    .end local v0           #diff:J
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #start:J
    .end local v5           #wi:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    return-void
.end method

.method public unregisterSensorListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 4
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 718
    if-nez p1, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mSensorListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 723
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez p2, :cond_3

    .line 724
    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 725
    if-eqz v0, :cond_2

    .line 726
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 731
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/htc/android/rosie/home/HostWidgetManager;->localLOGD:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/android/rosie/home/HostWidgetManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for sensor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 728
    :cond_3
    if-eqz v0, :cond_2

    .line 729
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public updateWidgetContainerId(II)V
    .locals 4
    .parameter "widgetId"
    .parameter "newContainerId"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager;->findWidgetInfo(I)Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;

    move-result-object v0

    .line 229
    .local v0, info:Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    const-string v1, "HostWidgetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EDIT_DEBUG] HostWidgetManager.updateWidgetContainerId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v0}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    #setter for: Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I
    invoke-static {v0, p2}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->access$402(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;I)I

    goto :goto_0
.end method

.method public declared-synchronized updateWidgetInDatabase(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager;->mOwner:Lcom/htc/android/rosie/home/HostWidgetManager$Owner;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/home/HostWidgetManager$Owner;->updateWidgetInfo(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
