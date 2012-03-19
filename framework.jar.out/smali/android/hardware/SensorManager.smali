.class public Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$LmsFilter;,
        Landroid/hardware/SensorManager$LegacyListener;,
        Landroid/hardware/SensorManager$ListenerDelegate;,
        Landroid/hardware/SensorManager$SensorThread;,
        Landroid/hardware/SensorManager$SensorEventPool;
    }
.end annotation


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.0010f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field private static final SENSOR_DISABLE:I = -0x1

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field private static final TAG:Ljava/lang/String; = "SensorManager"

.field private static final mTempMatrix:[F

.field private static sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SensorManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static sPool:Landroid/hardware/SensorManager$SensorEventPool;

.field private static sQueue:I

.field private static sRotation:I

.field private static sSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSensorModuleInitialized:Z

.field private static sSensorThread:Landroid/hardware/SensorManager$SensorThread;

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private mLegacyListenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorListener;",
            "Landroid/hardware/SensorManager$LegacyListener;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 368
    sput-boolean v1, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 370
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    .line 372
    sput v1, Landroid/hardware/SensorManager;->sRotation:I

    .line 379
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 6
    .parameter "mainLooper"

    .prologue
    .line 628
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 361
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 629
    iput-object p1, p0, Landroid/hardware/SensorManager;->mMainLooper:Landroid/os/Looper;

    .line 632
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 633
    :try_start_0
    sget-boolean v3, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    if-nez v3, :cond_3

    .line 634
    const/4 v3, 0x1

    sput-boolean v3, Landroid/hardware/SensorManager;->sSensorModuleInitialized:Z

    .line 636
    invoke-static {}, Landroid/hardware/SensorManager;->nativeClassInit()V

    .line 638
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    sput-object v3, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;

    .line 640
    sget-object v3, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 644
    :try_start_1
    sget-object v3, Landroid/hardware/SensorManager;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v5, Landroid/hardware/SensorManager$1;

    invoke-direct {v5, p0}, Landroid/hardware/SensorManager$1;-><init>(Landroid/hardware/SensorManager;)V

    invoke-interface {v3, v5}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v3

    sput v3, Landroid/hardware/SensorManager;->sRotation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 656
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_module_init()I

    .line 657
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 658
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 660
    .local v1, i:I
    :cond_1
    new-instance v2, Landroid/hardware/Sensor;

    invoke-direct {v2}, Landroid/hardware/Sensor;-><init>()V

    .line 661
    .local v2, sensor:Landroid/hardware/Sensor;
    invoke-static {v2, v1}, Landroid/hardware/SensorManager;->sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I

    move-result v1

    .line 663
    if-ltz v1, :cond_2

    .line 666
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/hardware/SensorManager;->getLegacySensorType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Sensor;->setLegacyType(I)V

    .line 667
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    sget-object v3, Landroid/hardware/SensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 670
    :cond_2
    if-gtz v1, :cond_1

    .line 672
    new-instance v3, Landroid/hardware/SensorManager$SensorEventPool;

    sget-object v5, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, p0, v5}, Landroid/hardware/SensorManager$SensorEventPool;-><init>(Landroid/hardware/SensorManager;I)V

    sput-object v3, Landroid/hardware/SensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    .line 673
    new-instance v3, Landroid/hardware/SensorManager$SensorThread;

    invoke-direct {v3}, Landroid/hardware/SensorManager$SensorThread;-><init>()V

    sput-object v3, Landroid/hardware/SensorManager;->sSensorThread:Landroid/hardware/SensorManager$SensorThread;

    .line 675
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1           #i:I
    .end local v2           #sensor:Landroid/hardware/Sensor;
    :cond_3
    monitor-exit v4

    .line 676
    return-void

    .line 675
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 651
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 88
    sget v0, Landroid/hardware/SensorManager;->sQueue:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    sput p0, Landroid/hardware/SensorManager;->sQueue:I

    return p0
.end method

.method static synthetic access$200()Landroid/hardware/SensorManager$SensorEventPool;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Landroid/hardware/SensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    return-object v0
.end method

.method private disableSensorLocked(Landroid/hardware/Sensor;)Z
    .locals 6
    .parameter "sensor"

    .prologue
    .line 1039
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1040
    .local v1, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1042
    const/4 v4, 0x1

    .line 1047
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    :goto_0
    return v4

    .line 1045
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1046
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1047
    .local v0, handle:I
    sget v4, Landroid/hardware/SensorManager;->sQueue:I

    const/4 v5, -0x1

    invoke-static {v4, v3, v0, v5}, Landroid/hardware/SensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    goto :goto_0
.end method

.method private enableSensorLocked(Landroid/hardware/Sensor;I)Z
    .locals 8
    .parameter "sensor"
    .parameter "delay"

    .prologue
    .line 1024
    const/4 v4, 0x0

    .line 1025
    .local v4, result:Z
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1026
    .local v1, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1027
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1028
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 1030
    .local v0, handle:I
    const-string v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SensorManager] registerListener: delay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    sget v5, Landroid/hardware/SensorManager;->sQueue:I

    invoke-static {v5, v3, v0, p2}, Landroid/hardware/SensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    .line 1035
    .end local v0           #handle:I
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public static getAltitude(FF)F
    .locals 7
    .parameter "p0"
    .parameter "p"

    .prologue
    .line 1667
    const v0, 0x3e42dcae

    .line 1668
    .local v0, coef:F
    const v1, 0x472d2a00

    const/high16 v2, 0x3f80

    div-float v3, p1, p0

    float-to-double v3, v3

    const-wide v5, 0x3fc85b95c0000000L

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    return v1
.end method

.method public static getAngleChange([F[F[F)V
    .locals 30
    .parameter "angleChange"
    .parameter "R"
    .parameter "prevR"

    .prologue
    .line 1929
    const/4 v11, 0x0

    .local v11, rd1:F
    const/4 v12, 0x0

    .local v12, rd4:F
    const/4 v13, 0x0

    .local v13, rd6:F
    const/4 v14, 0x0

    .local v14, rd7:F
    const/4 v15, 0x0

    .line 1930
    .local v15, rd8:F
    const/16 v16, 0x0

    .local v16, ri0:F
    const/16 v17, 0x0

    .local v17, ri1:F
    const/16 v18, 0x0

    .local v18, ri2:F
    const/16 v19, 0x0

    .local v19, ri3:F
    const/16 v20, 0x0

    .local v20, ri4:F
    const/16 v21, 0x0

    .local v21, ri5:F
    const/16 v22, 0x0

    .local v22, ri6:F
    const/16 v23, 0x0

    .local v23, ri7:F
    const/16 v24, 0x0

    .line 1931
    .local v24, ri8:F
    const/4 v2, 0x0

    .local v2, pri0:F
    const/4 v3, 0x0

    .local v3, pri1:F
    const/4 v4, 0x0

    .local v4, pri2:F
    const/4 v5, 0x0

    .local v5, pri3:F
    const/4 v6, 0x0

    .local v6, pri4:F
    const/4 v7, 0x0

    .local v7, pri5:F
    const/4 v8, 0x0

    .local v8, pri6:F
    const/4 v9, 0x0

    .local v9, pri7:F
    const/4 v10, 0x0

    .line 1934
    .local v10, pri8:F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 1935
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 1936
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 1937
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 1938
    const/16 v25, 0x3

    aget v19, p1, v25

    .line 1939
    const/16 v25, 0x4

    aget v20, p1, v25

    .line 1940
    const/16 v25, 0x5

    aget v21, p1, v25

    .line 1941
    const/16 v25, 0x6

    aget v22, p1, v25

    .line 1942
    const/16 v25, 0x7

    aget v23, p1, v25

    .line 1943
    const/16 v25, 0x8

    aget v24, p1, v25

    .line 1956
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 1957
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 1958
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 1959
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 1960
    const/16 v25, 0x3

    aget v5, p2, v25

    .line 1961
    const/16 v25, 0x4

    aget v6, p2, v25

    .line 1962
    const/16 v25, 0x5

    aget v7, p2, v25

    .line 1963
    const/16 v25, 0x6

    aget v8, p2, v25

    .line 1964
    const/16 v25, 0x7

    aget v9, p2, v25

    .line 1965
    const/16 v25, 0x8

    aget v10, p2, v25

    .line 1981
    :cond_1
    :goto_1
    mul-float v25, v2, v17

    mul-float v26, v5, v20

    add-float v25, v25, v26

    mul-float v26, v8, v23

    add-float v11, v25, v26

    .line 1982
    mul-float v25, v3, v17

    mul-float v26, v6, v20

    add-float v25, v25, v26

    mul-float v26, v9, v23

    add-float v12, v25, v26

    .line 1983
    mul-float v25, v4, v16

    mul-float v26, v7, v19

    add-float v25, v25, v26

    mul-float v26, v10, v22

    add-float v13, v25, v26

    .line 1984
    mul-float v25, v4, v17

    mul-float v26, v7, v20

    add-float v25, v25, v26

    mul-float v26, v10, v23

    add-float v14, v25, v26

    .line 1985
    mul-float v25, v4, v18

    mul-float v26, v7, v21

    add-float v25, v25, v26

    mul-float v26, v10, v24

    add-float v15, v25, v26

    .line 1987
    const/16 v25, 0x0

    float-to-double v0, v11

    move-wide/from16 v26, v0

    float-to-double v0, v12

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 1988
    const/16 v25, 0x1

    neg-float v0, v14

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 1989
    const/16 v25, 0x2

    neg-float v0, v13

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    float-to-double v0, v15

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 1991
    return-void

    .line 1944
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1945
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 1946
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 1947
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 1948
    const/16 v25, 0x4

    aget v19, p1, v25

    .line 1949
    const/16 v25, 0x5

    aget v20, p1, v25

    .line 1950
    const/16 v25, 0x6

    aget v21, p1, v25

    .line 1951
    const/16 v25, 0x8

    aget v22, p1, v25

    .line 1952
    const/16 v25, 0x9

    aget v23, p1, v25

    .line 1953
    const/16 v25, 0xa

    aget v24, p1, v25

    goto/16 :goto_0

    .line 1966
    :cond_3
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 1967
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 1968
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 1969
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 1970
    const/16 v25, 0x4

    aget v5, p2, v25

    .line 1971
    const/16 v25, 0x5

    aget v6, p2, v25

    .line 1972
    const/16 v25, 0x6

    aget v7, p2, v25

    .line 1973
    const/16 v25, 0x8

    aget v8, p2, v25

    .line 1974
    const/16 v25, 0x9

    aget v9, p2, v25

    .line 1975
    const/16 v25, 0xa

    aget v10, p2, v25

    goto/16 :goto_1
.end method

.method public static getInclination([F)F
    .locals 4
    .parameter "I"

    .prologue
    const/4 v2, 0x5

    .line 1412
    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1413
    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1415
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private getLegacySensorType(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 679
    packed-switch p1, :pswitch_data_0

    .line 689
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 681
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 683
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 685
    :pswitch_3
    const/16 v0, 0x80

    goto :goto_0

    .line 687
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getOrientation([F[F)[F
    .locals 9
    .parameter "R"
    .parameter "values"

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1625
    array-length v0, p0

    if-ne v0, v8, :cond_0

    .line 1626
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1627
    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1628
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 1634
    :goto_0
    return-object p1

    .line 1630
    :cond_0
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x5

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 1631
    aget v0, p0, v8

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 1632
    aget v0, p0, v7

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0xa

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    goto :goto_0
.end method

.method public static getQuaternionFromVector([F[F)V
    .locals 8
    .parameter "Q"
    .parameter "rv"

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2076
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2077
    aget v0, p1, v7

    aput v0, p0, v4

    .line 2082
    :goto_0
    aget v0, p1, v4

    aput v0, p0, v5

    .line 2083
    aget v0, p1, v5

    aput v0, p0, v6

    .line 2084
    aget v0, p1, v6

    aput v0, p0, v7

    .line 2085
    return-void

    .line 2079
    :cond_0
    const/high16 v1, 0x3f80

    aget v2, p1, v4

    aget v3, p1, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aget v2, p1, v5

    aget v3, p1, v5

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aget v2, p1, v6

    aget v3, p1, v6

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p0, v4

    .line 2080
    aget v1, p0, v4

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    aget v0, p0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :cond_1
    aput v0, p0, v4

    goto :goto_0
.end method

.method static getRotation()I
    .locals 2

    .prologue
    .line 1682
    sget-object v1, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1683
    :try_start_0
    sget v0, Landroid/hardware/SensorManager;->sRotation:I

    monitor-exit v1

    return v0

    .line 1684
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .locals 27
    .parameter "R"
    .parameter "I"
    .parameter "gravity"
    .parameter "geomagnetic"

    .prologue
    .line 1337
    const/16 v20, 0x0

    aget v2, p2, v20

    .line 1338
    .local v2, Ax:F
    const/16 v20, 0x1

    aget v3, p2, v20

    .line 1339
    .local v3, Ay:F
    const/16 v20, 0x2

    aget v4, p2, v20

    .line 1340
    .local v4, Az:F
    const/16 v20, 0x0

    aget v5, p3, v20

    .line 1341
    .local v5, Ex:F
    const/16 v20, 0x1

    aget v6, p3, v20

    .line 1342
    .local v6, Ey:F
    const/16 v20, 0x2

    aget v7, p3, v20

    .line 1343
    .local v7, Ez:F
    mul-float v20, v6, v4

    mul-float v21, v7, v3

    sub-float v8, v20, v21

    .line 1344
    .local v8, Hx:F
    mul-float v20, v7, v2

    mul-float v21, v5, v4

    sub-float v9, v20, v21

    .line 1345
    .local v9, Hy:F
    mul-float v20, v5, v3

    mul-float v21, v6, v2

    sub-float v10, v20, v21

    .line 1346
    .local v10, Hz:F
    mul-float v20, v8, v8

    mul-float v21, v9, v9

    add-float v20, v20, v21

    mul-float v21, v10, v10

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v18, v0

    .line 1347
    .local v18, normH:F
    const v20, 0x3dcccccd

    cmpg-float v20, v18, v20

    if-gez v20, :cond_0

    .line 1350
    const/16 v20, 0x0

    .line 1394
    :goto_0
    return v20

    .line 1352
    :cond_0
    const/high16 v20, 0x3f80

    div-float v17, v20, v18

    .line 1353
    .local v17, invH:F
    mul-float v8, v8, v17

    .line 1354
    mul-float v9, v9, v17

    .line 1355
    mul-float v10, v10, v17

    .line 1356
    const/high16 v20, 0x3f80

    mul-float v21, v2, v2

    mul-float v22, v3, v3

    add-float v21, v21, v22

    mul-float v22, v4, v4

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 1357
    .local v15, invA:F
    mul-float/2addr v2, v15

    .line 1358
    mul-float/2addr v3, v15

    .line 1359
    mul-float/2addr v4, v15

    .line 1360
    mul-float v20, v3, v10

    mul-float v21, v4, v9

    sub-float v11, v20, v21

    .line 1361
    .local v11, Mx:F
    mul-float v20, v4, v8

    mul-float v21, v2, v10

    sub-float v12, v20, v21

    .line 1362
    .local v12, My:F
    mul-float v20, v2, v9

    mul-float v21, v3, v8

    sub-float v13, v20, v21

    .line 1363
    .local v13, Mz:F
    if-eqz p0, :cond_1

    .line 1364
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 1365
    const/16 v20, 0x0

    aput v8, p0, v20

    const/16 v20, 0x1

    aput v9, p0, v20

    const/16 v20, 0x2

    aput v10, p0, v20

    .line 1366
    const/16 v20, 0x3

    aput v11, p0, v20

    const/16 v20, 0x4

    aput v12, p0, v20

    const/16 v20, 0x5

    aput v13, p0, v20

    .line 1367
    const/16 v20, 0x6

    aput v2, p0, v20

    const/16 v20, 0x7

    aput v3, p0, v20

    const/16 v20, 0x8

    aput v4, p0, v20

    .line 1375
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 1379
    const/high16 v20, 0x3f80

    mul-float v21, v5, v5

    mul-float v22, v6, v6

    add-float v21, v21, v22

    mul-float v22, v7, v7

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    div-float v16, v20, v21

    .line 1380
    .local v16, invE:F
    mul-float v20, v5, v11

    mul-float v21, v6, v12

    add-float v20, v20, v21

    mul-float v21, v7, v13

    add-float v20, v20, v21

    mul-float v14, v20, v16

    .line 1381
    .local v14, c:F
    mul-float v20, v5, v2

    mul-float v21, v6, v3

    add-float v20, v20, v21

    mul-float v21, v7, v4

    add-float v20, v20, v21

    mul-float v19, v20, v16

    .line 1382
    .local v19, s:F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1383
    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    aput v21, p1, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, p1, v20

    .line 1384
    const/16 v20, 0x3

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x4

    aput v14, p1, v20

    const/16 v20, 0x5

    aput v19, p1, v20

    .line 1385
    const/16 v20, 0x6

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x7

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, p1, v20

    const/16 v20, 0x8

    aput v14, p1, v20

    .line 1394
    .end local v14           #c:F
    .end local v16           #invE:F
    .end local v19           #s:F
    :cond_2
    :goto_2
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 1368
    :cond_3
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1369
    const/16 v20, 0x0

    aput v8, p0, v20

    const/16 v20, 0x1

    aput v9, p0, v20

    const/16 v20, 0x2

    aput v10, p0, v20

    const/16 v20, 0x3

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 1370
    const/16 v20, 0x4

    aput v11, p0, v20

    const/16 v20, 0x5

    aput v12, p0, v20

    const/16 v20, 0x6

    aput v13, p0, v20

    const/16 v20, 0x7

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 1371
    const/16 v20, 0x8

    aput v2, p0, v20

    const/16 v20, 0x9

    aput v3, p0, v20

    const/16 v20, 0xa

    aput v4, p0, v20

    const/16 v20, 0xb

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 1372
    const/16 v20, 0xc

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xd

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xe

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xf

    const/high16 v21, 0x3f80

    aput v21, p0, v20

    goto/16 :goto_1

    .line 1386
    .restart local v14       #c:F
    .restart local v16       #invE:F
    .restart local v19       #s:F
    :cond_4
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 1387
    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    aput v21, p1, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, p1, v20

    .line 1388
    const/16 v20, 0x4

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x5

    aput v14, p1, v20

    const/16 v20, 0x6

    aput v19, p1, v20

    .line 1389
    const/16 v20, 0x8

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x9

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, p1, v20

    const/16 v20, 0xa

    aput v14, p1, v20

    .line 1390
    const/16 v20, 0x3

    const/16 v21, 0x7

    const/16 v22, 0xb

    const/16 v23, 0xc

    const/16 v24, 0xd

    const/16 v25, 0xe

    const/16 v26, 0x0

    aput v26, p1, v25

    aput v26, p1, v24

    aput v26, p1, v23

    aput v26, p1, v22

    aput v26, p1, v21

    aput v26, p1, v20

    .line 1391
    const/16 v20, 0xf

    const/high16 v21, 0x3f80

    aput v21, p1, v20

    goto/16 :goto_2
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .locals 18
    .parameter "R"
    .parameter "rotationVector"

    .prologue
    .line 2015
    const/4 v14, 0x0

    aget v2, p1, v14

    .line 2016
    .local v2, q1:F
    const/4 v14, 0x1

    aget v6, p1, v14

    .line 2017
    .local v6, q2:F
    const/4 v14, 0x2

    aget v9, p1, v14

    .line 2019
    .local v9, q3:F
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x4

    if-ne v14, v15, :cond_1

    .line 2020
    const/4 v14, 0x3

    aget v1, p1, v14

    .line 2026
    .local v1, q0:F
    :goto_0
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v11, v14, v2

    .line 2027
    .local v11, sq_q1:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v6

    mul-float v12, v14, v6

    .line 2028
    .local v12, sq_q2:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v9

    mul-float v13, v14, v9

    .line 2029
    .local v13, sq_q3:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v4, v14, v6

    .line 2030
    .local v4, q1_q2:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v9

    mul-float v10, v14, v1

    .line 2031
    .local v10, q3_q0:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v5, v14, v9

    .line 2032
    .local v5, q1_q3:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v6

    mul-float v7, v14, v1

    .line 2033
    .local v7, q2_q0:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v6

    mul-float v8, v14, v9

    .line 2034
    .local v8, q2_q3:F
    const/high16 v14, 0x4000

    mul-float/2addr v14, v2

    mul-float v3, v14, v1

    .line 2036
    .local v3, q1_q0:F
    move-object/from16 v0, p0

    array-length v14, v0

    const/16 v15, 0x9

    if-ne v14, v15, :cond_3

    .line 2037
    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v12

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2038
    const/4 v14, 0x1

    sub-float v15, v4, v10

    aput v15, p0, v14

    .line 2039
    const/4 v14, 0x2

    add-float v15, v5, v7

    aput v15, p0, v14

    .line 2041
    const/4 v14, 0x3

    add-float v15, v4, v10

    aput v15, p0, v14

    .line 2042
    const/4 v14, 0x4

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2043
    const/4 v14, 0x5

    sub-float v15, v8, v3

    aput v15, p0, v14

    .line 2045
    const/4 v14, 0x6

    sub-float v15, v5, v7

    aput v15, p0, v14

    .line 2046
    const/4 v14, 0x7

    add-float v15, v8, v3

    aput v15, p0, v14

    .line 2047
    const/16 v14, 0x8

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v12

    aput v15, p0, v14

    .line 2067
    :cond_0
    :goto_1
    return-void

    .line 2022
    .end local v1           #q0:F
    .end local v3           #q1_q0:F
    .end local v4           #q1_q2:F
    .end local v5           #q1_q3:F
    .end local v7           #q2_q0:F
    .end local v8           #q2_q3:F
    .end local v10           #q3_q0:F
    .end local v11           #sq_q1:F
    .end local v12           #sq_q2:F
    .end local v13           #sq_q3:F
    :cond_1
    const/high16 v14, 0x3f80

    mul-float v15, v2, v2

    sub-float/2addr v14, v15

    mul-float v15, v6, v6

    sub-float/2addr v14, v15

    mul-float v15, v9, v9

    sub-float v1, v14, v15

    .line 2023
    .restart local v1       #q0:F
    const/4 v14, 0x0

    cmpl-float v14, v1, v14

    if-lez v14, :cond_2

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v1, v14

    :goto_2
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 2048
    .restart local v3       #q1_q0:F
    .restart local v4       #q1_q2:F
    .restart local v5       #q1_q3:F
    .restart local v7       #q2_q0:F
    .restart local v8       #q2_q3:F
    .restart local v10       #q3_q0:F
    .restart local v11       #sq_q1:F
    .restart local v12       #sq_q2:F
    .restart local v13       #sq_q3:F
    :cond_3
    move-object/from16 v0, p0

    array-length v14, v0

    const/16 v15, 0x10

    if-ne v14, v15, :cond_0

    .line 2049
    const/4 v14, 0x0

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v12

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2050
    const/4 v14, 0x1

    sub-float v15, v4, v10

    aput v15, p0, v14

    .line 2051
    const/4 v14, 0x2

    add-float v15, v5, v7

    aput v15, p0, v14

    .line 2052
    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, p0, v14

    .line 2054
    const/4 v14, 0x4

    add-float v15, v4, v10

    aput v15, p0, v14

    .line 2055
    const/4 v14, 0x5

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v13

    aput v15, p0, v14

    .line 2056
    const/4 v14, 0x6

    sub-float v15, v8, v3

    aput v15, p0, v14

    .line 2057
    const/4 v14, 0x7

    const/4 v15, 0x0

    aput v15, p0, v14

    .line 2059
    const/16 v14, 0x8

    sub-float v15, v5, v7

    aput v15, p0, v14

    .line 2060
    const/16 v14, 0x9

    add-float v15, v8, v3

    aput v15, p0, v14

    .line 2061
    const/16 v14, 0xa

    const/high16 v15, 0x3f80

    sub-float/2addr v15, v11

    sub-float/2addr v15, v12

    aput v15, p0, v14

    .line 2062
    const/16 v14, 0xb

    const/4 v15, 0x0

    aput v15, p0, v14

    .line 2064
    const/16 v14, 0xc

    const/16 v15, 0xd

    const/16 v16, 0xe

    const/16 v17, 0x0

    aput v17, p0, v16

    aput v17, p0, v15

    aput v17, p0, v14

    .line 2065
    const/16 v14, 0xf

    const/high16 v15, 0x3f80

    aput v15, p0, v14

    goto :goto_1
.end method

.method private static native nativeClassInit()V
.end method

.method private registerLegacyListener(IILandroid/hardware/SensorListener;II)Z
    .locals 7
    .parameter "legacyType"
    .parameter "type"
    .parameter "listener"
    .parameter "sensors"
    .parameter "rate"

    .prologue
    .line 842
    if-nez p3, :cond_1

    .line 843
    const/4 v3, 0x0

    .line 870
    :cond_0
    :goto_0
    return v3

    .line 845
    :cond_1
    const/4 v3, 0x0

    .line 847
    .local v3, result:Z
    and-int v5, p4, p1

    if-eqz v5, :cond_0

    .line 849
    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    .line 850
    .local v4, sensor:Landroid/hardware/Sensor;
    if-eqz v4, :cond_0

    .line 854
    const/4 v1, 0x0

    .line 855
    .local v1, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 856
    :try_start_0
    iget-object v5, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/SensorManager$LegacyListener;

    move-object v1, v0

    .line 857
    if-nez v1, :cond_2

    .line 860
    new-instance v2, Landroid/hardware/SensorManager$LegacyListener;

    invoke-direct {v2, p0, p3}, Landroid/hardware/SensorManager$LegacyListener;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .local v2, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :try_start_1
    iget-object v5, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v5, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 863
    .end local v2           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :cond_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 865
    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager$LegacyListener;->registerSensor(I)V

    .line 867
    invoke-virtual {p0, v1, v4, p5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v3

    goto :goto_0

    .line 863
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .end local v1           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v2       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    .restart local v1       #legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    goto :goto_1
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .locals 4
    .parameter "inR"
    .parameter "X"
    .parameter "Y"
    .parameter "outR"

    .prologue
    .line 1497
    if-ne p0, p3, :cond_2

    .line 1498
    sget-object v2, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 1499
    .local v2, temp:[F
    monitor-enter v2

    .line 1501
    :try_start_0
    invoke-static {p0, p1, p2, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1502
    array-length v1, p3

    .line 1503
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1504
    aget v3, v2, v0

    aput v3, p3, v0

    .line 1503
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1505
    :cond_0
    const/4 v3, 0x1

    monitor-exit v2

    .line 1509
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #temp:[F
    :goto_1
    return v3

    .line 1507
    .restart local v2       #temp:[F
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    .end local v2           #temp:[F
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    goto :goto_1

    .line 1507
    .restart local v2       #temp:[F
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .locals 22
    .parameter "inR"
    .parameter "X"
    .parameter "Y"
    .parameter "outR"

    .prologue
    .line 1526
    move-object/from16 v0, p3

    array-length v6, v0

    .line 1527
    .local v6, length:I
    move-object/from16 v0, p0

    array-length v15, v0

    if-eq v15, v6, :cond_0

    .line 1528
    const/4 v15, 0x0

    .line 1570
    :goto_0
    return v15

    .line 1529
    :cond_0
    and-int/lit8 v15, p1, 0x7c

    if-nez v15, :cond_1

    and-int/lit8 v15, p2, 0x7c

    if-eqz v15, :cond_2

    .line 1530
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 1531
    :cond_2
    and-int/lit8 v15, p1, 0x3

    if-eqz v15, :cond_3

    and-int/lit8 v15, p2, 0x3

    if-nez v15, :cond_4

    .line 1532
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 1533
    :cond_4
    and-int/lit8 v15, p1, 0x3

    and-int/lit8 v16, p2, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 1534
    const/4 v15, 0x0

    goto :goto_0

    .line 1539
    :cond_5
    xor-int v1, p1, p2

    .line 1542
    .local v1, Z:I
    and-int/lit8 v15, p1, 0x3

    add-int/lit8 v12, v15, -0x1

    .line 1543
    .local v12, x:I
    and-int/lit8 v15, p2, 0x3

    add-int/lit8 v13, v15, -0x1

    .line 1544
    .local v13, y:I
    and-int/lit8 v15, v1, 0x3

    add-int/lit8 v14, v15, -0x1

    .line 1547
    .local v14, z:I
    add-int/lit8 v15, v14, 0x1

    rem-int/lit8 v2, v15, 0x3

    .line 1548
    .local v2, axis_y:I
    add-int/lit8 v15, v14, 0x2

    rem-int/lit8 v3, v15, 0x3

    .line 1549
    .local v3, axis_z:I
    xor-int v15, v12, v2

    xor-int v16, v13, v3

    or-int v15, v15, v16

    if-eqz v15, :cond_6

    .line 1550
    xor-int/lit16 v1, v1, 0x80

    .line 1552
    :cond_6
    const/16 v15, 0x80

    move/from16 v0, p1

    if-lt v0, v15, :cond_a

    const/4 v9, 0x1

    .line 1553
    .local v9, sx:Z
    :goto_1
    const/16 v15, 0x80

    move/from16 v0, p2

    if-lt v0, v15, :cond_b

    const/4 v10, 0x1

    .line 1554
    .local v10, sy:Z
    :goto_2
    const/16 v15, 0x80

    if-lt v1, v15, :cond_c

    const/4 v11, 0x1

    .line 1557
    .local v11, sz:Z
    :goto_3
    const/16 v15, 0x10

    if-ne v6, v15, :cond_d

    const/4 v8, 0x4

    .line 1558
    .local v8, rowLength:I
    :goto_4
    const/4 v5, 0x0

    .local v5, j:I
    :goto_5
    const/4 v15, 0x3

    if-ge v5, v15, :cond_12

    .line 1559
    mul-int v7, v5, v8

    .line 1560
    .local v7, offset:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    const/4 v15, 0x3

    if-ge v4, v15, :cond_11

    .line 1561
    if-ne v12, v4, :cond_7

    add-int v16, v7, v4

    if-eqz v9, :cond_e

    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    neg-float v15, v15

    :goto_7
    aput v15, p3, v16

    .line 1562
    :cond_7
    if-ne v13, v4, :cond_8

    add-int v16, v7, v4

    if-eqz v10, :cond_f

    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    neg-float v15, v15

    :goto_8
    aput v15, p3, v16

    .line 1563
    :cond_8
    if-ne v14, v4, :cond_9

    add-int v16, v7, v4

    if-eqz v11, :cond_10

    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    neg-float v15, v15

    :goto_9
    aput v15, p3, v16

    .line 1560
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1552
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v7           #offset:I
    .end local v8           #rowLength:I
    .end local v9           #sx:Z
    .end local v10           #sy:Z
    .end local v11           #sz:Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_1

    .line 1553
    .restart local v9       #sx:Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_2

    .line 1554
    .restart local v10       #sy:Z
    :cond_c
    const/4 v11, 0x0

    goto :goto_3

    .line 1557
    .restart local v11       #sz:Z
    :cond_d
    const/4 v8, 0x3

    goto :goto_4

    .line 1561
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v7       #offset:I
    .restart local v8       #rowLength:I
    :cond_e
    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    goto :goto_7

    .line 1562
    :cond_f
    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    goto :goto_8

    .line 1563
    :cond_10
    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    goto :goto_9

    .line 1558
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1566
    .end local v4           #i:I
    .end local v7           #offset:I
    :cond_12
    const/16 v15, 0x10

    if-ne v6, v15, :cond_13

    .line 1567
    const/4 v15, 0x3

    const/16 v16, 0x7

    const/16 v17, 0xb

    const/16 v18, 0xc

    const/16 v19, 0xd

    const/16 v20, 0xe

    const/16 v21, 0x0

    aput v21, p3, v20

    aput v21, p3, v19

    aput v21, p3, v18

    aput v21, p3, v17

    aput v21, p3, v16

    aput v21, p3, v15

    .line 1568
    const/16 v15, 0xf

    const/high16 v16, 0x3f80

    aput v16, p3, v15

    .line 1570
    :cond_13
    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method static native sensors_create_queue()I
.end method

.method static native sensors_data_poll(I[F[I[J)I
.end method

.method static native sensors_destroy_queue(I)V
.end method

.method static native sensors_enable_sensor(ILjava/lang/String;II)Z
.end method

.method private static native sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I
.end method

.method private static native sensors_module_init()I
.end method

.method private unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V
    .locals 9
    .parameter "legacyType"
    .parameter "type"
    .parameter "listener"
    .parameter "sensors"

    .prologue
    .line 904
    if-nez p3, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    const/4 v4, 0x0

    .line 909
    .local v4, legacyListener:Landroid/hardware/SensorManager$LegacyListener;
    iget-object v7, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 910
    :try_start_0
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/hardware/SensorManager$LegacyListener;

    move-object v4, v0

    .line 911
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 912
    if-eqz v4, :cond_0

    .line 914
    and-int v6, p4, p1

    if-eqz v6, :cond_0

    .line 916
    invoke-virtual {p0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 917
    .local v5, sensor:Landroid/hardware/Sensor;
    if-eqz v5, :cond_0

    .line 920
    invoke-virtual {v4, p1}, Landroid/hardware/SensorManager$LegacyListener;->unregisterSensor(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 922
    invoke-virtual {p0, v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 925
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 926
    const/4 v1, 0x0

    .line 927
    .local v1, found:Z
    :try_start_1
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 928
    .local v2, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_2

    .line 929
    const/4 v1, 0x1

    .line 933
    .end local v2           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_3
    if-nez v1, :cond_4

    .line 934
    iget-object v8, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    :try_start_2
    iget-object v6, p0, Landroid/hardware/SensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v6, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 938
    :cond_4
    :try_start_3
    monitor-exit v7

    goto :goto_0

    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 911
    .end local v1           #found:Z
    .end local v5           #sensor:Landroid/hardware/Sensor;
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 936
    .restart local v1       #found:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #sensor:Landroid/hardware/Sensor;
    :catchall_2
    move-exception v6

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private unregisterListener(Ljava/lang/Object;)V
    .locals 7
    .parameter "listener"

    .prologue
    .line 1181
    if-nez p1, :cond_0

    .line 1199
    :goto_0
    return-void

    .line 1185
    :cond_0
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1186
    :try_start_0
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1187
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 1188
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1189
    .local v2, l:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 1190
    sget-object v5, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1192
    invoke-virtual {v2}, Landroid/hardware/SensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 1193
    .local v3, sensor:Landroid/hardware/Sensor;
    invoke-direct {p0, v3}, Landroid/hardware/SensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    goto :goto_2

    .line 1198
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #sensor:Landroid/hardware/Sensor;
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1187
    .restart local v0       #i:I
    .restart local v2       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #size:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1198
    .end local v2           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private unregisterListener(Ljava/lang/Object;Landroid/hardware/Sensor;)V
    .locals 5
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 1159
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    sget-object v4, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1164
    :try_start_0
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1165
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1166
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1167
    .local v1, l:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_3

    .line 1168
    invoke-virtual {v1, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1171
    sget-object v3, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1176
    .end local v1           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_2
    invoke-direct {p0, p2}, Landroid/hardware/SensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    .line 1177
    monitor-exit v4

    goto :goto_0

    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1165
    .restart local v0       #i:I
    .restart local v1       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v2       #size:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 2
    .parameter "type"

    .prologue
    .line 771
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 772
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    goto :goto_0
.end method

.method public getSensorList(I)Ljava/util/List;
    .locals 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 736
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    monitor-enter v0

    .line 737
    :try_start_0
    sget-object v4, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 738
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v3, :cond_1

    .line 739
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 740
    move-object v3, v0

    .line 748
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 749
    sget-object v4, Landroid/hardware/SensorManager;->sSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 751
    :cond_1
    monitor-exit v0

    .line 752
    return-object v3

    .line 742
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 744
    .local v1, i:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 745
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 751
    .end local v1           #i:Landroid/hardware/Sensor;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getSensors()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 699
    const/4 v3, 0x0

    .line 700
    .local v3, result:I
    sget-object v0, Landroid/hardware/SensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 701
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 702
    .local v1, i:Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 704
    :pswitch_0
    or-int/lit8 v3, v3, 0x2

    .line 705
    goto :goto_0

    .line 707
    :pswitch_1
    or-int/lit8 v3, v3, 0x8

    .line 708
    goto :goto_0

    .line 710
    :pswitch_2
    or-int/lit16 v3, v3, 0x81

    goto :goto_0

    .line 715
    .end local v1           #i:Landroid/hardware/Sensor;
    :cond_0
    return v3

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRotationChanged(I)V
    .locals 2
    .parameter "rotation"

    .prologue
    .line 1676
    sget-object v1, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1677
    :try_start_0
    sput p1, Landroid/hardware/SensorManager;->sRotation:I

    .line 1678
    monitor-exit v1

    .line 1679
    return-void

    .line 1678
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"

    .prologue
    .line 1020
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 8
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"
    .parameter "handler"

    .prologue
    .line 1084
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1085
    :cond_0
    const/4 v5, 0x0

    .line 1155
    :goto_0
    return v5

    .line 1087
    :cond_1
    const/4 v5, 0x1

    .line 1088
    .local v5, result:Z
    const/4 v0, -0x1

    .line 1089
    .local v0, delay:I
    packed-switch p3, :pswitch_data_0

    .line 1103
    move v0, p3

    .line 1114
    :goto_1
    sget-object v7, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1116
    const/4 v3, 0x0

    .line 1117
    .local v3, l:Landroid/hardware/SensorManager$ListenerDelegate;
    :try_start_0
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager$ListenerDelegate;

    .line 1118
    .local v1, i:Landroid/hardware/SensorManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/SensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-ne v6, p1, :cond_2

    .line 1119
    move-object v3, v1

    move-object v4, v3

    .line 1125
    .end local v1           #i:Landroid/hardware/SensorManager$ListenerDelegate;
    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .local v4, l:Landroid/hardware/SensorManager$ListenerDelegate;
    :goto_2
    if-nez v4, :cond_6

    .line 1126
    :try_start_1
    new-instance v3, Landroid/hardware/SensorManager$ListenerDelegate;

    invoke-direct {v3, p0, p1, p2, p4}, Landroid/hardware/SensorManager$ListenerDelegate;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1127
    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :try_start_2
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1130
    sget-object v6, Landroid/hardware/SensorManager;->sSensorThread:Landroid/hardware/SensorManager$SensorThread;

    invoke-virtual {v6}, Landroid/hardware/SensorManager$SensorThread;->startLocked()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1131
    invoke-direct {p0, p2, v0}, Landroid/hardware/SensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1133
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1134
    const/4 v5, 0x0

    .line 1153
    :cond_3
    :goto_3
    monitor-exit v7

    goto :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1091
    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :pswitch_0
    const/4 v0, 0x0

    .line 1092
    goto :goto_1

    .line 1094
    :pswitch_1
    const/16 v0, 0x4e20

    .line 1095
    goto :goto_1

    .line 1097
    :pswitch_2
    const v0, 0x1046b

    .line 1098
    goto :goto_1

    .line 1100
    :pswitch_3
    const v0, 0x30d40

    .line 1101
    goto :goto_1

    .line 1138
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_4
    :try_start_3
    sget-object v6, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1139
    const/4 v5, 0x0

    goto :goto_3

    .line 1143
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 1146
    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_6
    :try_start_4
    invoke-virtual {v4, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 1147
    invoke-direct {p0, p2, v0}, Landroid/hardware/SensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1149
    invoke-virtual {v4, p2}, Landroid/hardware/SensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1150
    const/4 v5, 0x0

    move-object v3, v4

    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_3

    .line 1153
    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_4

    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    :cond_7
    move-object v3, v4

    .end local v4           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_3

    :cond_8
    move-object v4, v3

    .end local v3           #l:Landroid/hardware/SensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SensorManager$ListenerDelegate;
    goto :goto_2

    .line 1089
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .locals 1
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 793
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 12
    .parameter "listener"
    .parameter "sensors"
    .parameter "rate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v2, 0x1

    .line 821
    if-nez p1, :cond_0

    .line 835
    :goto_0
    return v10

    .line 824
    :cond_0
    const/4 v9, 0x0

    .local v9, result:Z
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 825
    invoke-direct/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v9, :cond_6

    :cond_1
    move v9, v2

    .line 827
    :goto_1
    const/16 v4, 0x8

    move-object v3, p0

    move v5, v1

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v9, :cond_7

    :cond_2
    move v9, v2

    .line 829
    :goto_2
    const/16 v4, 0x80

    move-object v3, p0

    move v5, v11

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v9, :cond_8

    :cond_3
    move v9, v2

    :goto_3
    move-object v1, p0

    move v3, v11

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 831
    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v9, :cond_9

    :cond_4
    move v9, v2

    .line 833
    :goto_4
    const/4 v4, 0x4

    const/4 v5, 0x7

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v9, :cond_a

    :cond_5
    move v9, v2

    :goto_5
    move v10, v9

    .line 835
    goto :goto_0

    :cond_6
    move v9, v10

    .line 825
    goto :goto_1

    :cond_7
    move v9, v10

    .line 827
    goto :goto_2

    :cond_8
    move v9, v10

    .line 829
    goto :goto_3

    :cond_9
    move v9, v10

    .line 831
    goto :goto_4

    :cond_a
    move v9, v10

    .line 833
    goto :goto_5
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 988
    invoke-direct {p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Ljava/lang/Object;)V

    .line 989
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 0
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 974
    invoke-direct {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Ljava/lang/Object;Landroid/hardware/Sensor;)V

    .line 975
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 957
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 958
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 4
    .parameter "listener"
    .parameter "sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 888
    invoke-direct {p0, v2, v1, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 890
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 892
    const/16 v0, 0x80

    invoke-direct {p0, v0, v3, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 894
    invoke-direct {p0, v1, v3, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 896
    const/4 v0, 0x4

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/SensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 898
    return-void
.end method
