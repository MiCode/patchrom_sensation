.class final Landroid/content/ContentProviderProxy;
.super Ljava/lang/Object;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    .line 354
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 499
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 500
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 502
    .local v3, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v5, "android.content.IContentProvider"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 505
    .local v2, operation:Landroid/content/ContentProviderOperation;
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentProviderOperation;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 514
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #operation:Landroid/content/ContentProviderOperation;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 515
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 514
    throw v5

    .line 507
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v3, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 509
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V

    .line 510
    sget-object v5, Landroid/content/ContentProviderResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    .local v4, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 515
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 512
    return-object v4
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6
    .parameter "url"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 479
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 481
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 483
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 484
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 486
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 488
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 489
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 492
    .local v0, count:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 493
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 490
    return v0

    .line 492
    .end local v0           #count:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 493
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 492
    throw v3
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .parameter "method"
    .parameter "request"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 612
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 614
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 620
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 622
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 623
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 626
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 627
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 624
    return-object v0

    .line 626
    .end local v0           #bundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 627
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 626
    throw v3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 522
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 524
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 526
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 527
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 530
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 532
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 533
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 536
    .local v0, count:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 537
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 534
    return v0

    .line 536
    .end local v0           #count:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 537
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 536
    throw v3
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter "mimeTypeFilter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 634
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 636
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 638
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 639
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 641
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 643
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 644
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 647
    .local v1, out:[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 648
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 645
    return-object v1

    .line 647
    .end local v1           #out:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 648
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 647
    throw v3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 439
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 441
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 443
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 445
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 447
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 448
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 451
    .local v1, out:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 449
    return-object v1

    .line 451
    .end local v1           #out:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 451
    throw v3
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "url"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 459
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 461
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 463
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 464
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 466
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 468
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 469
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    .local v1, out:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 470
    return-object v1

    .line 472
    .end local v1           #out:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 473
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 472
    throw v3
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "url"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 589
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 591
    .local v3, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 593
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 594
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 598
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 599
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 600
    .local v2, has:I
    if-eqz v2, :cond_0

    sget-object v4, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 604
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 605
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 602
    return-object v1

    .line 600
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 604
    .end local v2           #has:I
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 605
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 604
    throw v4
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .parameter "url"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 567
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 569
    .local v3, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 571
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 572
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 576
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 577
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 578
    .local v2, has:I
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 581
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 582
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 579
    return-object v1

    .line 578
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 581
    .end local v2           #has:I
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 582
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 581
    throw v4
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "url"
    .parameter "mimeType"
    .parameter "opts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 655
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 657
    .local v3, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 659
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 660
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 663
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x17

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 665
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 666
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 667
    .local v2, has:I
    if-eqz v2, :cond_0

    sget-object v4, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 671
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 669
    return-object v1

    .line 667
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 671
    .end local v2           #has:I
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 671
    throw v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 363
    new-instance v1, Landroid/database/BulkCursorToCursorAdaptor;

    invoke-direct {v1}, Landroid/database/BulkCursorToCursorAdaptor;-><init>()V

    .line 364
    .local v1, adaptor:Landroid/database/BulkCursorToCursorAdaptor;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 365
    .local v3, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 367
    .local v9, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v12, "android.content.IContentProvider"

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 369
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 370
    const/4 v8, 0x0

    .line 371
    .local v8, length:I
    if-eqz p2, :cond_0

    .line 372
    move-object/from16 v0, p2

    array-length v8, v0

    .line 374
    :cond_0
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v8, :cond_1

    .line 376
    aget-object v12, p2, v6

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 378
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    if-eqz p4, :cond_2

    .line 380
    move-object/from16 v0, p4

    array-length v8, v0

    .line 384
    :goto_1
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_3

    .line 386
    aget-object v12, p4, v6

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 382
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 388
    :cond_3
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->getObserver()Landroid/database/IContentObserver;

    move-result-object v12

    invoke-interface {v12}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 392
    const/4 v12, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v13

    if-ne v12, v13, :cond_4

    .line 393
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    new-instance v12, Ljava/lang/Exception;

    invoke-direct {v12}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 396
    .local v4, elem:[Ljava/lang/StackTraceElement;
    array-length v12, v4

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    const/4 v6, 0x0

    :goto_3
    array-length v12, v4

    if-ge v6, v12, :cond_4

    .line 398
    aget-object v12, v4, v6

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 404
    .end local v4           #elem:[Ljava/lang/StackTraceElement;
    :cond_4
    iget-object v12, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v12, v13, v3, v9, v14}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 406
    invoke-static {v9}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 408
    invoke-virtual {v9}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/database/BulkCursorNative;->asInterface(Landroid/os/IBinder;)Landroid/database/IBulkCursor;

    move-result-object v2

    .line 409
    .local v2, bulkCursor:Landroid/database/IBulkCursor;
    if-eqz v2, :cond_6

    .line 410
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 411
    .local v10, rowCount:I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 412
    .local v7, idColumnPosition:I
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-eqz v12, :cond_5

    const/4 v11, 0x1

    .line 413
    .local v11, wantsAllOnMoveCalls:Z
    :goto_4
    invoke-virtual {v1, v2, v10, v7, v11}, Landroid/database/BulkCursorToCursorAdaptor;->initialize(Landroid/database/IBulkCursor;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 431
    .end local v7           #idColumnPosition:I
    .end local v10           #rowCount:I
    .end local v11           #wantsAllOnMoveCalls:Z
    :goto_5
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 432
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 423
    return-object v1

    .line 412
    .restart local v7       #idColumnPosition:I
    .restart local v10       #rowCount:I
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 420
    .end local v7           #idColumnPosition:I
    .end local v10           #rowCount:I
    :cond_6
    :try_start_1
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 421
    const/4 v1, 0x0

    goto :goto_5

    .line 424
    .end local v2           #bulkCursor:Landroid/database/IBulkCursor;
    .end local v6           #i:I
    .end local v8           #length:I
    :catch_0
    move-exception v5

    .line 425
    .local v5, ex:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->close()V

    .line 426
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    .end local v5           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v12

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 432
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 431
    throw v12

    .line 427
    :catch_1
    move-exception v5

    .line 428
    .local v5, ex:Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {v1}, Landroid/database/BulkCursorToCursorAdaptor;->close()V

    .line 429
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 544
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 546
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 548
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 549
    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 550
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 553
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 555
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 556
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 559
    .local v0, count:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 560
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 557
    return v0

    .line 559
    .end local v0           #count:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 560
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 559
    throw v3
.end method
