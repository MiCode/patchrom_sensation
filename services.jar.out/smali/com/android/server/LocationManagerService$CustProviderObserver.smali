.class final Lcom/android/server/LocationManagerService$CustProviderObserver;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustProviderObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$CustProviderObserver;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 15
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 465
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 466
    :try_start_0
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 467
    .local v6, resolver:Landroid/content/ContentResolver;
    const-string v11, "customized_location_provider"

    invoke-static {v6, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, custProviderName:Ljava/lang/String;
    if-nez v1, :cond_0

    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mCustProviderValue:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$900(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    .line 472
    monitor-exit v12

    .line 569
    :goto_0
    return-void

    .line 473
    :cond_0
    if-eqz v1, :cond_1

    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mCustProviderValue:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$900(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 474
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mCustProviderValue:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$900(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 475
    monitor-exit v12

    goto :goto_0

    .line 568
    .end local v1           #custProviderName:Ljava/lang/String;
    .end local v6           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 478
    .restart local v1       #custProviderName:Ljava/lang/String;
    .restart local v6       #resolver:Landroid/content/ContentResolver;
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #setter for: Lcom/android/server/LocationManagerService;->mCustProviderValue:Ljava/lang/String;
    invoke-static {v11, v1}, Lcom/android/server/LocationManagerService;->access$902(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    const/4 v8, 0x0

    .line 481
    .local v8, strGeoCodeName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 484
    .local v9, strNetworkName:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 485
    const-string v11, ","

    const/4 v13, -0x1

    invoke-virtual {v1, v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 486
    .local v10, strSplits:[Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 487
    array-length v4, v10

    .line 488
    .local v4, nLength:I
    const/4 v11, 0x1

    if-lt v4, v11, :cond_2

    .line 489
    const/4 v11, 0x0

    aget-object v11, v10, v11

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    .line 490
    const/4 v11, 0x0

    aget-object v9, v10, v11

    .line 493
    :cond_2
    const/4 v11, 0x2

    if-lt v4, v11, :cond_3

    .line 494
    const/4 v11, 0x1

    aget-object v11, v10, v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    .line 495
    const/4 v11, 0x1

    aget-object v8, v10, v11

    .line 500
    .end local v4           #nLength:I
    .end local v10           #strSplits:[Ljava/lang/String;
    :cond_3
    if-nez v9, :cond_4

    .line 501
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 502
    .local v7, resources:Landroid/content/res/Resources;
    const v11, 0x104001c

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 505
    .end local v7           #resources:Landroid/content/res/Resources;
    :cond_4
    if-nez v8, :cond_5

    .line 506
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 507
    .restart local v7       #resources:Landroid/content/res/Resources;
    const v11, 0x104001d

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 511
    .end local v7           #resources:Landroid/content/res/Resources;
    :cond_5
    const-string v11, "LocationManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[CustProvider][Update] before, NetworkLocation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/LocationManagerService;->access$1000(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Geocode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/LocationManagerService;->access$1100(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, bUpdate:Z
    if-eqz v8, :cond_6

    .line 515
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$1100(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 516
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$1100(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 517
    const/4 v0, 0x1

    .line 523
    :cond_6
    :goto_1
    if-eqz v0, :cond_8

    .line 524
    new-instance v2, Lcom/android/server/location/GeocoderProxy;

    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v11

    invoke-direct {v2, v11, v8}, Lcom/android/server/location/GeocoderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 525
    .local v2, gecodeProvider:Lcom/android/server/location/GeocoderProxy;
    if-eqz v2, :cond_8

    .line 526
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 527
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/location/GeocoderProxy;->disconnect()V

    .line 529
    :cond_7
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #setter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v11, v2}, Lcom/android/server/LocationManagerService;->access$1202(Lcom/android/server/LocationManagerService;Lcom/android/server/location/GeocoderProxy;)Lcom/android/server/location/GeocoderProxy;

    .line 530
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #setter for: Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;
    invoke-static {v11, v8}, Lcom/android/server/LocationManagerService;->access$1102(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    .end local v2           #gecodeProvider:Lcom/android/server/location/GeocoderProxy;
    :cond_8
    const/4 v0, 0x0

    .line 536
    if-eqz v9, :cond_9

    .line 537
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$1000(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 538
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$1000(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 539
    const/4 v0, 0x1

    .line 545
    :cond_9
    :goto_2
    if-eqz v0, :cond_b

    .line 546
    new-instance v5, Lcom/android/server/location/LocationProviderProxy;

    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v11

    const-string v13, "network"

    iget-object v14, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v14}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v14

    invoke-direct {v5, v11, v13, v9, v14}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 548
    .local v5, networkProvider:Lcom/android/server/location/LocationProviderProxy;
    if-eqz v5, :cond_b

    .line 549
    const/4 v3, 0x0

    .line 550
    .local v3, info:Landroid/net/NetworkInfo;
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v11, v11, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    if-eqz v11, :cond_a

    .line 551
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v11, v11, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v11}, Lcom/android/server/location/LocationProviderProxy;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 552
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v11, v11, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/server/location/LocationProviderProxy;->enableLocationTracking(Z)V

    .line 553
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v11, v11, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v11}, Lcom/android/server/location/LocationProviderProxy;->disable()V

    .line 554
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v13, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v13, v13, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    #calls: Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V
    invoke-static {v11, v13}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderInterface;)V

    .line 555
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v11, v11, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v11}, Lcom/android/server/location/LocationProviderProxy;->disconnect()V

    .line 557
    :cond_a
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    iput-object v5, v11, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    .line 558
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #setter for: Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;
    invoke-static {v11, v9}, Lcom/android/server/LocationManagerService;->access$1002(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 559
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v13, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v13, v13, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    #calls: Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V
    invoke-static {v11, v13}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderInterface;)V

    .line 560
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v11

    const-string v13, "network"

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->updateProvidersLocked()V
    invoke-static {v11}, Lcom/android/server/LocationManagerService;->access$800(Lcom/android/server/LocationManagerService;)V

    .line 562
    if-eqz v3, :cond_b

    .line 563
    iget-object v11, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v11, v11, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    iget-object v13, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static {v13}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;)I

    move-result v13

    invoke-virtual {v11, v13, v3}, Lcom/android/server/location/LocationProviderProxy;->updateNetworkState(ILandroid/net/NetworkInfo;)V

    .line 567
    .end local v3           #info:Landroid/net/NetworkInfo;
    .end local v5           #networkProvider:Lcom/android/server/location/LocationProviderProxy;
    :cond_b
    const-string v11, "LocationManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[CustProvider][Update] after, NetworkLocation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/LocationManagerService;->access$1000(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Geocode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/LocationManagerService;->access$1100(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 520
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 542
    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_2
.end method
