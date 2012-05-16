.class public Lcom/htc/music/MusicPluginManager$MusicPlugin;
.super Ljava/lang/Object;
.source "MusicPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MusicPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicPlugin"
.end annotation


# instance fields
.field private mArtMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArtMapShuffle:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mNotifyIcon:Landroid/graphics/Bitmap;

.field private mPlayAtBeginning:Z

.field private mPluginClass:Ljava/lang/String;

.field private mPluginDescription:Ljava/lang/String;

.field private mPluginIcon:Landroid/graphics/Bitmap;

.field private mPluginName:Ljava/lang/String;

.field private mPluginPackage:Ljava/lang/String;

.field private mService:Lcom/htc/music/IMusicPluginService;

.field private mStartActivity:Z

.field final synthetic this$0:Lcom/htc/music/MusicPluginManager;


# direct methods
.method public constructor <init>(Lcom/htc/music/MusicPluginManager;)V
    .locals 1
    .parameter

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1369
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;

    .line 1370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;

    .line 1373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mStartActivity:Z

    .line 1374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPlayAtBeginning:Z

    .line 1375
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/music/MusicPluginManager$MusicPlugin;Lcom/htc/music/IMusicPluginService;)Lcom/htc/music/IMusicPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/MusicPluginManager$MusicPlugin;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method


# virtual methods
.method public getConnection()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public getNotifyIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPlayAtBeginning()Z
    .locals 1

    .prologue
    .line 1458
    iget-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPlayAtBeginning:Z

    return v0
.end method

.method public getPluginClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Lcom/htc/music/IMusicPluginService;
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;

    return-object v0
.end method

.method public getStartActivity()Z
    .locals 1

    .prologue
    .line 1450
    iget-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mStartActivity:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1466
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;

    .line 1467
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;

    .line 1468
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;

    .line 1469
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1470
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1473
    :cond_0
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1476
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1477
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1479
    :cond_2
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    .line 1481
    :cond_3
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;

    .line 1482
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1483
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mStartActivity:Z

    .line 1485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPlayAtBeginning:Z

    .line 1486
    return-void
.end method

.method public setConnection(Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "mConnection"

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;

    .line 1439
    return-void
.end method

.method public setNotifyIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "notifyIcon"

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    .line 1426
    :cond_0
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    .line 1427
    return-void
.end method

.method public setPlayAtBeginning(Z)V
    .locals 0
    .parameter "playAtBeginning"

    .prologue
    .line 1462
    iput-boolean p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPlayAtBeginning:Z

    .line 1463
    return-void
.end method

.method public setPluginClass(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginClasse"

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;

    .line 1391
    return-void
.end method

.method public setPluginDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;

    .line 1443
    return-void
.end method

.method public setPluginIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pluginIcon"

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    .line 1414
    :cond_0
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    .line 1415
    return-void
.end method

.method public setPluginName(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginName"

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;

    .line 1383
    return-void
.end method

.method public setPluginPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginPackage"

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginPackage:Ljava/lang/String;

    .line 1447
    return-void
.end method

.method public setService(Lcom/htc/music/IMusicPluginService;)V
    .locals 0
    .parameter "mediaPluginService"

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;

    .line 1431
    return-void
.end method

.method public setStartActivity(Z)V
    .locals 0
    .parameter "startActivity"

    .prologue
    .line 1454
    iput-boolean p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mStartActivity:Z

    .line 1455
    return-void
.end method
