.class Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;
.super Ljava/lang/Object;
.source "ContactsUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/ContactsUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleSocialNetworkLargePhotoHelper"
.end annotation


# static fields
.field private static final CONTACTSUTITLITY_HTTP_DEFAULT_AGENT:Ljava/lang/String; = "ContactsUtility/1.00"

.field private static final MSG_CHECK_DOWNLOAD_ORIGINAL_FACEBOOK_LARGE_PHOTO:I = 0x38

.field static final MSG_CHECK_DOWNLOAD_SET:I = 0x33

.field static final MSG_CHECK_DOWNLOAD_SET_END:I = 0x37

.field private static final MSG_DOWNLOAD_INSERT:I = 0x35

.field private static final MSG_DOWNLOAD_ORIGINAL_FACEBOOK_LARGE_PHOTO:I = 0x39

.field private static final MSG_DOWNLOAD_UPDATE:I = 0x34

.field static final MSG_END_HANDLER:I = 0x32

.field static final MSG_END_HANDLER_DELAY:I = 0x2710

.field private static final MSG_FAVORITE_CHANGE:I = 0x36

.field private static final MSG_FAVORITE_CHANGE_DELAY:I = 0x1388

.field static MessageHandler:Landroid/os/Handler;

.field private static mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field static mObjectLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2118
    sput-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    .line 2119
    sput-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2120
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    .line 2121
    sput-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;JLjava/lang/String;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 2104
    invoke-static/range {p0 .. p6}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->downloadSocialNetworkLargePhoto(Landroid/content/Context;JLjava/lang/String;ZJ)V

    return-void
.end method

.method static synthetic access$200(JLandroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2104
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->downloadOriginalFacebookLargePhoto(JLandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Landroid/net/http/AndroidHttpClient;
    .locals 1

    .prologue
    .line 2104
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2104
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->broadcastFavoriteChangeIntent(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$600(JLjava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2104
    invoke-static {p0, p1, p2, p3}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2104
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()V
    .locals 0

    .prologue
    .line 2104
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->endHandler()V

    return-void
.end method

.method private static broadcastFavoriteChangeIntent(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "lContactId"

    .prologue
    .line 2482
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    if-nez p0, :cond_1

    .line 2498
    :cond_0
    :goto_0
    return-void

    .line 2484
    :cond_1
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2485
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 2486
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v4, 0x32

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2488
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2489
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x36

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2490
    long-to-int v2, p1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2491
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2492
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2494
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2495
    .local v1, msgEnd:Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2496
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2497
    monitor-exit v3

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #msgEnd:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "rawContactId"
    .parameter "sourceId"
    .parameter "context"

    .prologue
    .line 2540
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 2578
    :cond_0
    :goto_0
    return-void

    .line 2541
    :cond_1
    const-string v0, "com.facebook.auth.login"

    const-string v1, "SupportContact"

    new-instance v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$2;

    invoke-direct {v2, p3, p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$2;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    invoke-static {p3, v0, v1, v2}, Lcom/htc/opensense/social/SocialServiceManager;->connectTo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;)Z

    goto :goto_0
.end method

.method private static doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    .parameter "rawContactId"
    .parameter "sourceId"
    .parameter "context"
    .parameter "largeAvatarUrl"

    .prologue
    .line 2581
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p0

    if-gez v1, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2682
    :cond_0
    :goto_0
    return-void

    .line 2582
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "raw_contact_id = ? AND mimetype = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x1

    const-string v15, "vnd.android.cursor.item/photo"

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2588
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 2589
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 2591
    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->getFromRemote4(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2592
    .local v7, bmPhoto:Landroid/graphics/Bitmap;
    if-nez v7, :cond_2

    .line 2593
    const-string v1, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDownloadOriginalFacebookLargePhoto getFromRemote4 NULL! largeAvatarUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    const-string v1, "ContactsUtility"

    const-string v2, "doDownloadOriginalFacebookLargePhoto getFromRemote4 NULL! use default photo!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    sget v1, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sget v2, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/htc/util/contacts/ContactsUtility;->getDefaultPeoplePhoto(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2596
    if-nez v7, :cond_2

    .line 2597
    const-string v1, "ContactsUtility"

    const-string v2, "doDownloadOriginalFacebookLargePhoto getFromRemote3 NULL! use default photo! still NULL!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    :cond_2
    if-eqz v7, :cond_3

    .line 2601
    sget v1, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sget v2, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    invoke-static {v7, v1, v2}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2603
    #calls: Lcom/htc/util/contacts/ContactsUtility;->getPhotoByteArray(Landroid/graphics/Bitmap;)[B
    invoke-static {v7}, Lcom/htc/util/contacts/ContactsUtility;->access$900(Landroid/graphics/Bitmap;)[B

    move-result-object v8

    .line 2604
    .local v8, byteArrayPhoto:[B
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 2605
    const/4 v7, 0x0

    .line 2606
    if-eqz v8, :cond_3

    .line 2609
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p0

    if-gez v1, :cond_3

    .line 2610
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2611
    .local v14, valuesDataPhoto:Landroid/content/ContentValues;
    const-string v1, "data15"

    invoke-virtual {v14, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2612
    const-string v1, "data8"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2613
    const-string v1, "data9"

    move-object/from16 v0, p4

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    const-string v1, "raw_contact_id"

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2618
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2679
    .end local v7           #bmPhoto:Landroid/graphics/Bitmap;
    .end local v8           #byteArrayPhoto:[B
    .end local v14           #valuesDataPhoto:Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2680
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2624
    :cond_4
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2625
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2626
    .local v12, photoDataId:J
    const-string v1, "data9"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2630
    .local v11, oldLargeUrl:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2631
    .local v10, needDownload:Z
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p0

    if-gez v1, :cond_5

    .line 2632
    const-wide/16 v1, -0x1

    cmp-long v1, v1, v12

    if-nez v1, :cond_7

    .line 2633
    const/4 v10, 0x1

    .line 2639
    :cond_5
    :goto_2
    if-eqz v10, :cond_4

    .line 2640
    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->getFromRemote4(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2641
    .restart local v7       #bmPhoto:Landroid/graphics/Bitmap;
    if-nez v7, :cond_6

    .line 2642
    const-string v1, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDownloadOriginalFacebookLargePhoto getFromRemote3 NULL! largeAvatarUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    const-string v1, "ContactsUtility"

    const-string v2, "doDownloadOriginalFacebookLargePhoto getFromRemote3 NULL! use default photo!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    sget v1, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sget v2, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/htc/util/contacts/ContactsUtility;->getDefaultPeoplePhoto(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2645
    if-nez v7, :cond_6

    .line 2646
    const-string v1, "ContactsUtility"

    const-string v2, "doDownloadOriginalFacebookLargePhoto getFromRemote3 NULL! use default photo! still NULL!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    :cond_6
    if-eqz v7, :cond_4

    .line 2650
    sget v1, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sget v2, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    invoke-static {v7, v1, v2}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2652
    #calls: Lcom/htc/util/contacts/ContactsUtility;->getPhotoByteArray(Landroid/graphics/Bitmap;)[B
    invoke-static {v7}, Lcom/htc/util/contacts/ContactsUtility;->access$900(Landroid/graphics/Bitmap;)[B

    move-result-object v8

    .line 2653
    .restart local v8       #byteArrayPhoto:[B
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 2654
    const/4 v7, 0x0

    .line 2655
    if-eqz v8, :cond_4

    .line 2658
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p0

    if-gez v1, :cond_4

    .line 2659
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2660
    .restart local v14       #valuesDataPhoto:Landroid/content/ContentValues;
    const-string v1, "data15"

    invoke-virtual {v14, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2661
    const-string v1, "data8"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2662
    const-string v1, "data9"

    move-object/from16 v0, p4

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    const-wide/16 v1, -0x1

    cmp-long v1, v1, v12

    if-nez v1, :cond_8

    .line 2666
    const-string v1, "raw_contact_id"

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2667
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 2634
    .end local v7           #bmPhoto:Landroid/graphics/Bitmap;
    .end local v8           #byteArrayPhoto:[B
    .end local v14           #valuesDataPhoto:Landroid/content/ContentValues;
    :cond_7
    const-wide/16 v1, 0x0

    cmp-long v1, v1, v12

    if-gez v1, :cond_5

    move-object/from16 v0, p4

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2635
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2669
    .restart local v7       #bmPhoto:Landroid/graphics/Bitmap;
    .restart local v8       #byteArrayPhoto:[B
    .restart local v14       #valuesDataPhoto:Landroid/content/ContentValues;
    :cond_8
    const-wide/16 v1, 0x0

    cmp-long v1, v1, v12

    if-gez v1, :cond_4

    move-object/from16 v0, p4

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2671
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v14, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static downloadOriginalFacebookLargePhoto(JLandroid/content/Context;)V
    .locals 15
    .parameter "contactId"
    .parameter "context"

    .prologue
    .line 2501
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p0

    if-gez v1, :cond_0

    if-nez p2, :cond_1

    .line 2537
    :cond_0
    :goto_0
    return-void

    .line 2502
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "sourceid"

    aput-object v5, v3, v4

    const-string v4, "contact_id = ? AND account_type = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v6

    const/4 v6, 0x1

    const-string v14, "com.facebook.auth.login"

    aput-object v14, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2508
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 2509
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2510
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2511
    .local v11, rawContactId:J
    const-string v1, "sourceid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2514
    .local v13, sourceId:Ljava/lang/String;
    const-wide/16 v1, 0x0

    cmp-long v1, v1, v11

    if-gez v1, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2515
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2516
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 2517
    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2519
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 2520
    .local v9, msg:Landroid/os/Message;
    const/16 v1, 0x38

    iput v1, v9, Landroid/os/Message;->what:I

    .line 2521
    move-object/from16 v0, p2

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2522
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2523
    .local v7, bundle:Landroid/os/Bundle;
    const-string v1, "_id"

    invoke-virtual {v7, v1, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2524
    const-string v1, "sourceid"

    invoke-virtual {v7, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    invoke-virtual {v9, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2526
    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2528
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 2529
    .local v10, msgEnd:Landroid/os/Message;
    const/16 v1, 0x32

    iput v1, v10, Landroid/os/Message;->what:I

    .line 2530
    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v10, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2531
    monitor-exit v2

    goto :goto_1

    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #msgEnd:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2534
    .end local v11           #rawContactId:J
    .end local v13           #sourceId:Ljava/lang/String;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2535
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private static downloadSocialNetworkLargePhoto(Landroid/content/Context;JLjava/lang/String;ZJ)V
    .locals 7
    .parameter "context"
    .parameter "lRawContactId"
    .parameter "sLargeAvatarUrl"
    .parameter "bUpdate"
    .parameter "lDataId"

    .prologue
    .line 2453
    const-wide/16 v3, 0x0

    cmp-long v3, v3, p1

    if-gez v3, :cond_0

    if-nez p0, :cond_1

    .line 2479
    :cond_0
    :goto_0
    return-void

    .line 2455
    :cond_1
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2456
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 2457
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v5, 0x32

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2459
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2460
    .local v1, msg:Landroid/os/Message;
    if-eqz p4, :cond_3

    .line 2461
    const/16 v3, 0x34

    iput v3, v1, Landroid/os/Message;->what:I

    .line 2465
    :goto_1
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2466
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2467
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2468
    const-string v3, "large_avatar_url"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    if-eqz p4, :cond_2

    const-wide/16 v5, -0x1

    cmp-long v3, v5, p5

    if-gez v3, :cond_2

    .line 2470
    const-string v3, "data_id"

    invoke-virtual {v0, v3, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2472
    :cond_2
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2473
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2475
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 2476
    .local v2, msgEnd:Landroid/os/Message;
    const/16 v3, 0x32

    iput v3, v2, Landroid/os/Message;->what:I

    .line 2477
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2478
    monitor-exit v4

    goto :goto_0

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #msgEnd:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2463
    .restart local v1       #msg:Landroid/os/Message;
    :cond_3
    const/16 v3, 0x35

    :try_start_1
    iput v3, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static endHandler()V
    .locals 5

    .prologue
    .line 2140
    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2141
    :try_start_0
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2142
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x37

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x36

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x39

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2150
    :cond_0
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2151
    monitor-exit v1

    .line 2165
    :goto_0
    return-void

    .line 2154
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    .line 2155
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2156
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2158
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_2

    .line 2159
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2160
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 2164
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static newMessageHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 2177
    new-instance v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$1;

    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$1;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method static startHandler()V
    .locals 3

    .prologue
    .line 2130
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2131
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mHandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2132
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2133
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->newMessageHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    .line 2134
    const-string v0, "ContactsUtility/1.00"

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 2137
    :cond_0
    return-void
.end method
