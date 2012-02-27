.class public final Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;
.super Ljava/lang/Object;
.source "HostWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/HostWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WidgetInfo"
.end annotation


# instance fields
.field private mCellX:I

.field private mCellY:I

.field private mContainerId:I

.field private mData:Ljava/util/Properties;

.field private final mId:I

.field private final mName:Landroid/content/ComponentName;

.field private final mProvider:Landroid/content/ComponentName;

.field private final mSpanX:I

.field private final mSpanY:I

.field private mStoreId:J


# direct methods
.method private constructor <init>(Landroid/content/ComponentName;Landroid/content/ComponentName;III)V
    .locals 1
    .parameter "provider"
    .parameter "name"
    .parameter "sx"
    .parameter "sy"
    .parameter "id"

    .prologue
    const/4 v0, -0x1

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I

    .line 839
    iput v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I

    iput v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I

    .line 844
    iput p5, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I

    .line 845
    iput-object p1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mProvider:Landroid/content/ComponentName;

    .line 846
    iput-object p2, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;

    .line 847
    iput p3, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mSpanX:I

    .line 848
    iput p4, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mSpanY:I

    .line 849
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Landroid/content/ComponentName;IIIIII)V
    .locals 0
    .parameter "provider"
    .parameter "name"
    .parameter "sx"
    .parameter "sy"
    .parameter "id"
    .parameter "containerId"
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 852
    invoke-direct/range {p0 .. p5}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;III)V

    .line 853
    iput p6, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I

    .line 854
    iput p7, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I

    .line 855
    iput p8, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I

    .line 856
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ComponentName;Landroid/content/ComponentName;IIILcom/htc/android/rosie/home/HostWidgetManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 832
    invoke-direct/range {p0 .. p5}, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;III)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Ljava/util/Properties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mData:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 832
    iget-wide v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mStoreId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mProvider:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 832
    iget v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mSpanX:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 832
    iget v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mSpanY:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 832
    iget v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 832
    iget v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 832
    iput p1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 832
    iget v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 832
    iput p1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 832
    iget v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 832
    iput p1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I

    return p1
.end method


# virtual methods
.method public addToContainer(III)V
    .locals 1
    .parameter "container"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 879
    iput p1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I

    .line 880
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 885
    :goto_0
    return-void

    .line 883
    :cond_0
    iput p2, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I

    .line 884
    iput p3, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I

    goto :goto_0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 888
    iget v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I

    return v0
.end method

.method public getData()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mData:Ljava/util/Properties;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I

    return v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 924
    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public getName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getProvider()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mProvider:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 867
    iget v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mSpanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mSpanY:I

    return v0
.end method

.method public declared-synchronized getStoreId()J
    .locals 2

    .prologue
    .line 913
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mStoreId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUlog()Ljava/lang/String;
    .locals 3

    .prologue
    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", htcfxwidget"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mSpanX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mSpanY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 937
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I

    sget v2, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    if-le v1, v2, :cond_1

    .line 938
    :cond_0
    const-string v0, ""

    .line 940
    :cond_1
    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 892
    iget v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I

    return v0
.end method

.method public saveData(Ljava/util/Properties;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 901
    iput-object p1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mData:Ljava/util/Properties;

    .line 902
    return-void
.end method

.method public declared-synchronized setStoreId(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 909
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mStoreId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    monitor-exit p0

    return-void

    .line 909
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetInfo: provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mProvider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mSpanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mSpanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", store="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mStoreId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mContainerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mCellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;->mData:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
