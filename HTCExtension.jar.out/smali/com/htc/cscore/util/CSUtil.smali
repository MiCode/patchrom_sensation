.class public Lcom/htc/cscore/util/CSUtil;
.super Ljava/lang/Object;
.source "CSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/util/CSUtil$syncFrequency;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.htc.cs.dashboard"

.field private static final CONTENT_URI_CSSHARED:Landroid/net/Uri; = null

.field private static final KEYBOARD:Ljava/lang/String; = "!he(G-9F"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final PATH_CSSHARED:Ljava/lang/String; = "csshared"

.field private static final QUERY_COLUMNS_CSSHARE:[Ljava/lang/String; = null

.field public static final RENEW_DATA_CENTER:Ljava/lang/String; = "com.htc.cs.renew.datacenter"

.field private static final TAG:Ljava/lang/String; = "CSUtil"

.field private static final algorithm:Ljava/lang/String; = "DES"

.field private static final preferenceName:Ljava/lang/String; = "CSShared"

.field public static final preferenceToken:Ljava/lang/String; = "CSToken"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.htc.cs.dashboard"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "csshared"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/cscore/util/CSUtil;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/util/CSUtil;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CurrentGMTTime()J
    .locals 16

    .prologue
    .line 617
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 618
    .local v2, c:Ljava/util/Calendar;
    const/16 v12, 0xf

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    int-to-long v9, v12

    .line 619
    .local v9, mOffset:J
    const/16 v12, 0xb

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 620
    .local v6, mHour:I
    const/16 v12, 0xc

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 621
    .local v8, mMinute:I
    const/16 v12, 0xd

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 622
    .local v11, mSec:I
    const/16 v12, 0xe

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 623
    .local v7, mMiliSec:I
    const/16 v12, 0x9

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 625
    .local v3, mAM_PM:I
    const-wide/32 v12, 0x36ee80

    div-long/2addr v9, v12

    .line 627
    int-to-long v12, v6

    sub-long v4, v12, v9

    .line 629
    .local v4, mCurrent:J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-gez v12, :cond_0

    .line 630
    if-nez v3, :cond_2

    .line 631
    const-wide/16 v12, 0x18

    add-long/2addr v4, v12

    .line 635
    :cond_0
    :goto_0
    const-wide/16 v12, 0x18

    cmp-long v12, v4, v12

    if-lez v12, :cond_1

    .line 636
    const-wide/16 v12, 0x18

    sub-long/2addr v4, v12

    .line 639
    :cond_1
    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v4

    int-to-long v14, v8

    add-long/2addr v12, v14

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    int-to-long v14, v11

    add-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    int-to-long v14, v7

    add-long v0, v12, v14

    .line 641
    .local v0, GMTTimeInMSec:J
    return-wide v0

    .line 633
    .end local v0           #GMTTimeInMSec:J
    :cond_2
    const-wide/16 v12, 0xc

    add-long/2addr v4, v12

    goto :goto_0
.end method

.method private static PreferenceElapsedTime(Landroid/content/Context;)J
    .locals 8
    .parameter "context"

    .prologue
    const-wide/16 v3, 0x0

    .line 597
    const/4 v1, 0x0

    .line 600
    .local v1, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v5, "com.htc.cs"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 607
    const-string v5, "CSShared"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 608
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v5, "ElapsedTime"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 610
    .local v3, time:J
    const-string v5, "CSUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serverTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    .end local v3           #time:J
    :goto_0
    return-wide v3

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CSUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static PreferenceServerTime(Landroid/content/Context;)J
    .locals 8
    .parameter "context"

    .prologue
    const-wide/16 v3, 0x0

    .line 579
    const/4 v1, 0x0

    .line 582
    .local v1, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v5, "com.htc.cs"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 588
    const-string v5, "CSShared"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 589
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v5, "ServerTime"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 591
    .local v3, time:J
    const-string v5, "CSUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serverTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    .end local v3           #time:J
    :goto_0
    return-wide v3

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CSUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static clearDeviceToken(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 734
    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    invoke-direct {v0}, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;-><init>()V

    .line 735
    .local v0, tempToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    const-string v1, ""

    iput-object v1, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    .line 736
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsEmailVerified:Ljava/lang/Boolean;

    .line 737
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsHandsetVerified:Ljava/lang/Boolean;

    .line 739
    invoke-static {p0, v0}, Lcom/htc/cscore/util/CSUtil;->setDeviceToken(Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    .line 741
    return-void
.end method

.method private static decryptString([B)Ljava/lang/String;
    .locals 8
    .parameter "decryptedByte"

    .prologue
    .line 448
    if-nez p0, :cond_0

    .line 449
    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): decryptedByte = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v4, ""

    .line 512
    :goto_0
    return-object v4

    .line 452
    :cond_0
    const-string v6, "!he(G-9F"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 453
    .local v0, byteKey:[B
    if-nez v0, :cond_1

    .line 454
    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): byteKey = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v4, ""

    goto :goto_0

    .line 457
    :cond_1
    const/4 v3, 0x0

    .line 460
    .local v3, recoveredBytes:[B
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "DES"

    invoke-direct {v5, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 461
    .local v5, spec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "DES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 462
    .local v1, cipher:Ljavax/crypto/Cipher;
    if-nez v1, :cond_2

    .line 463
    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): cipher = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v4, ""

    goto :goto_0

    .line 466
    :cond_2
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 467
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v3

    .line 506
    const/4 v4, 0x0

    .line 507
    .local v4, recoveredString:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 508
    new-instance v4, Ljava/lang/String;

    .end local v4           #recoveredString:Ljava/lang/String;
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .restart local v4       #recoveredString:Ljava/lang/String;
    goto :goto_0

    .line 469
    .end local v1           #cipher:Ljavax/crypto/Cipher;
    .end local v4           #recoveredString:Ljava/lang/String;
    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v2

    .line 471
    .local v2, e:Ljava/security/InvalidKeyException;
    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): InvalidKeyException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 473
    const-string v4, ""

    goto :goto_0

    .line 475
    .end local v2           #e:Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v2

    .line 477
    .local v2, e:Ljavax/crypto/IllegalBlockSizeException;
    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): IllegalBlockSizeException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .line 479
    const-string v4, ""

    goto :goto_0

    .line 481
    .end local v2           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v2

    .line 483
    .local v2, e:Ljavax/crypto/BadPaddingException;
    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): BadPaddingException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    .line 485
    const-string v4, ""

    goto :goto_0

    .line 487
    .end local v2           #e:Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception v2

    .line 489
    .local v2, e:Ljavax/crypto/NoSuchPaddingException;
    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): NoSuchPaddingException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .line 491
    const-string v4, ""

    goto :goto_0

    .line 493
    .end local v2           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v2

    .line 495
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): NoSuchAlgorithmException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 497
    const-string v4, ""

    goto/16 :goto_0

    .line 499
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v2

    .line 501
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): NoSuchAlgorithmException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 503
    const-string v4, ""

    goto/16 :goto_0

    .line 510
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #cipher:Ljavax/crypto/Cipher;
    .restart local v4       #recoveredString:Ljava/lang/String;
    .restart local v5       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :cond_3
    const-string v4, ""

    goto/16 :goto_0
.end method

.method public static getAccountID(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 339
    const/4 v9, 0x0

    .line 342
    .local v9, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v0, "com.htc.cs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 353
    const-string v6, ""

    .line 355
    .local v6, accountID:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cscore/util/CSUtil;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    sget-object v2, Lcom/htc/cscore/util/CSUtil;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "EmailAddress"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 356
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 357
    const-string v0, "CSUtil"

    const-string v1, "getAccountID(): null == cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    .end local v6           #accountID:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v6

    .line 343
    :catch_0
    move-exception v8

    .line 344
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 360
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #accountID:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 362
    const-string v0, "CSUtil"

    const-string v1, "getAccountID(): cursor.moveToFirst() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 368
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v8

    .line 370
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountID() e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 365
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 366
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public static getAuthTicket(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "context"

    .prologue
    .line 518
    const/4 v9, 0x0

    .line 521
    .local v9, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v0, "com.htc.cs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 532
    const-string v8, ""

    .line 534
    .local v8, hashedPassword:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cscore/util/CSUtil;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    sget-object v2, Lcom/htc/cscore/util/CSUtil;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v13, "HashedMasd"

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 535
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 536
    const-string v0, "CSUtil"

    const-string v1, "getAuthTicket(): null == cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 539
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 540
    const-string v0, "CSUtil"

    const-string v1, "getAuthTicket(): cursor.moveToFirst() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_1
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/htc/cscore/util/CSUtil;->decryptString([B)Ljava/lang/String;

    move-result-object v8

    .line 543
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 554
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getServerTime(Landroid/content/Context;)J

    move-result-wide v10

    .line 555
    .local v10, rawDate:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->WhirlPoolHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 556
    .local v12, token:Ljava/lang/String;
    const-string v0, "%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v12, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v8           #hashedPassword:Ljava/lang/String;
    .end local v10           #rawDate:J
    .end local v12           #token:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 522
    :catch_0
    move-exception v7

    .line 523
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v0, 0x0

    goto :goto_1

    .line 545
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #hashedPassword:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 547
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAuthTicket() e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCMSURI(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 253
    const/4 v9, 0x0

    .line 256
    .local v9, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v0, "com.htc.cs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 267
    const-string v6, "t-myatlantis.wwwa.com/$TME$/"

    .line 269
    .local v6, cmsURI:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cscore/util/CSUtil;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    sget-object v2, Lcom/htc/cscore/util/CSUtil;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "cmsURI"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 270
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 271
    const-string v0, "CSUtil"

    const-string v1, " getCMSURI(): null == cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    .end local v6           #cmsURI:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v6

    .line 257
    :catch_0
    move-exception v8

    .line 258
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #cmsURI:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 276
    const-string v0, "CSUtil"

    const-string v1, " getCMSURI(): cursor.moveToFirst() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 282
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v8

    .line 284
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCMSURI() e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 279
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 280
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public static getCSRegion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 431
    const/4 v1, 0x0

    .line 434
    .local v1, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 440
    const-string v4, "CSShared"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 441
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v4, "Region"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 443
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :goto_0
    return-object v3

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    .line 293
    const/4 v3, 0x0

    .line 296
    .local v3, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v7, "com.htc.cs"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 303
    const-string v7, "CSShared"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 304
    .local v4, preferences:Landroid/content/SharedPreferences;
    const-string v7, "PhoneUUID"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, deviceID:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 308
    :cond_0
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 309
    .local v6, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 311
    .local v5, strIMEI:Ljava/lang/String;
    const-string v7, "ro.serialno"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, deviceSN:Ljava/lang/String;
    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 317
    :try_start_1
    const-string v7, ""

    invoke-static {v1, v5, v7}, Lcom/htc/cscore/util/UUIDConverter;->createHandsetUUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 325
    if-nez v0, :cond_1

    .line 326
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .end local v0           #deviceID:Ljava/lang/String;
    .end local v1           #deviceSN:Ljava/lang/String;
    .end local v4           #preferences:Landroid/content/SharedPreferences;
    .end local v5           #strIMEI:Ljava/lang/String;
    .end local v6           #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return-object v0

    .line 298
    :catch_0
    move-exception v2

    .line 299
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "CSUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v0, 0x0

    goto :goto_0

    .line 319
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #deviceID:Ljava/lang/String;
    .restart local v1       #deviceSN:Ljava/lang/String;
    .restart local v4       #preferences:Landroid/content/SharedPreferences;
    .restart local v5       #strIMEI:Ljava/lang/String;
    .restart local v6       #tm:Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v2

    .line 321
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    if-nez v0, :cond_1

    .line 326
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 325
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-nez v0, :cond_2

    .line 326
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    throw v7

    .line 331
    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDeviceToken(Landroid/content/Context;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 756
    new-instance v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;-><init>()V

    .line 757
    .local v1, tempToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    const-string v2, "CSToken"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 758
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "AuthKey"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    .line 759
    const-string v2, "emailverified"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsEmailVerified:Ljava/lang/Boolean;

    .line 760
    const-string v2, "handsetverified"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsHandsetVerified:Ljava/lang/Boolean;

    .line 762
    return-object v1
.end method

.method public static getExceptionErrorCode(Lcom/htc/cscore/restapi/exceptions/CSException;)Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    .locals 6
    .parameter "e"

    .prologue
    .line 781
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/htc/cscore/restapi/exceptions/WebException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 782
    const-string v3, "CSUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ##### getClass() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/htc/cscore/restapi/exceptions/WebException;

    .line 784
    .local v2, webException:Lcom/htc/cscore/restapi/exceptions/WebException;
    invoke-virtual {v2}, Lcom/htc/cscore/restapi/exceptions/WebException;->getCustomErrorMessage()Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    move-result-object v0

    .line 785
    .local v0, cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    if-nez v0, :cond_0

    .line 786
    sget-object v3, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->GeneralError:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 817
    .end local v0           #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .end local v2           #webException:Lcom/htc/cscore/restapi/exceptions/WebException;
    :goto_0
    return-object v3

    .line 788
    .restart local v0       #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .restart local v2       #webException:Lcom/htc/cscore/restapi/exceptions/WebException;
    :cond_0
    iget-object v3, v0, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->code:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    goto :goto_0

    .line 790
    .end local v0           #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .end local v2           #webException:Lcom/htc/cscore/restapi/exceptions/WebException;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/htc/cscore/restapi/exceptions/WebException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 792
    const-string v3, "CSUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ##### getClass() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/htc/cscore/restapi/exceptions/WebException;

    .line 794
    .restart local v2       #webException:Lcom/htc/cscore/restapi/exceptions/WebException;
    invoke-virtual {v2}, Lcom/htc/cscore/restapi/exceptions/WebException;->getCustomErrorMessage()Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    move-result-object v0

    .line 795
    .restart local v0       #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    if-nez v0, :cond_2

    .line 796
    sget-object v3, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->GeneralError:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    goto :goto_0

    .line 798
    :cond_2
    iget-object v3, v0, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->code:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    goto :goto_0

    .line 800
    .end local v0           #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .end local v2           #webException:Lcom/htc/cscore/restapi/exceptions/WebException;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/htc/cscore/restapi/exceptions/WebException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 802
    const-string v3, "CSUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ##### getClass() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/htc/cscore/restapi/exceptions/WebException;

    .line 804
    .restart local v2       #webException:Lcom/htc/cscore/restapi/exceptions/WebException;
    invoke-virtual {v2}, Lcom/htc/cscore/restapi/exceptions/WebException;->getCustomErrorMessage()Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    move-result-object v0

    .line 805
    .restart local v0       #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    if-nez v0, :cond_4

    .line 806
    sget-object v3, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->GeneralError:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    goto/16 :goto_0

    .line 808
    :cond_4
    iget-object v3, v0, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->code:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    goto/16 :goto_0

    .line 811
    .end local v0           #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .end local v2           #webException:Lcom/htc/cscore/restapi/exceptions/WebException;
    :cond_5
    sget-object v3, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->GeneralError:Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 814
    :catch_0
    move-exception v1

    .line 816
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 817
    sget-object v3, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->GeneralError:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    goto/16 :goto_0
.end method

.method public static getFirstName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 380
    const/4 v2, 0x0

    .line 383
    .local v2, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 389
    const-string v4, "CSShared"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 390
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v4, "FirstName"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .end local v3           #preferences:Landroid/content/SharedPreferences;
    :goto_0
    return-object v0

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLastName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 397
    const/4 v2, 0x0

    .line 400
    .local v2, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 406
    const-string v4, "CSShared"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 407
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v4, "LastName"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .end local v3           #preferences:Landroid/content/SharedPreferences;
    :goto_0
    return-object v0

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLockScreenStatus(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 681
    const/4 v1, 0x0

    .line 684
    .local v1, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 690
    const-string v4, "CSShared"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 691
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v4, "LockScreen"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 693
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :goto_0
    return-object v3

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getNewDataCenter(Lcom/htc/cscore/restapi/exceptions/CSException;)Ljava/lang/String;
    .locals 3
    .parameter "e"

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/htc/cscore/restapi/exceptions/WebException;

    .line 775
    .local v1, webException:Lcom/htc/cscore/restapi/exceptions/WebException;
    invoke-virtual {v1}, Lcom/htc/cscore/restapi/exceptions/WebException;->getCustomErrorMessage()Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    move-result-object v0

    .line 776
    .local v0, cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    iget-object v2, v0, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    return-object v2
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 414
    const/4 v2, 0x0

    .line 417
    .local v2, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 423
    const-string v4, "CSShared"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 424
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v4, "PhoneNumber"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .end local v3           #preferences:Landroid/content/SharedPreferences;
    :goto_0
    return-object v0

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getServerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 212
    const/4 v8, 0x0

    .line 215
    .local v8, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v0, "com.htc.cs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 226
    const-string v9, "https://www.htcsense.com/$SS$"

    .line 228
    .local v9, serverName:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cscore/util/CSUtil;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    sget-object v2, Lcom/htc/cscore/util/CSUtil;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "serverName"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 229
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 230
    const-string v0, "CSUtil"

    const-string v1, "getServerName(): null == cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #serverName:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 216
    :catch_0
    move-exception v7

    .line 217
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #serverName:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 235
    const-string v0, "CSUtil"

    const-string v1, "getServerName(): cursor.moveToFirst() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 241
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v7

    .line 243
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getServerName() e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 238
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 239
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public static getServerTime(Landroid/content/Context;)J
    .locals 13
    .parameter "context"

    .prologue
    const-wide/16 v10, 0x0

    .line 561
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->PreferenceServerTime(Landroid/content/Context;)J

    move-result-wide v8

    .line 562
    .local v8, svrTime:J
    cmp-long v12, v8, v10

    if-nez v12, :cond_0

    .line 575
    :goto_0
    return-wide v10

    .line 565
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 566
    .local v0, CurrentElapsedTime:J
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->PreferenceElapsedTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 567
    .local v2, PrefETime:J
    invoke-static {}, Lcom/htc/cscore/util/CSUtil;->CurrentGMTTime()J

    move-result-wide v4

    .line 569
    .local v4, curGMTTime:J
    const-string v10, "CSUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "curGMTTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    sub-long v6, v0, v2

    .line 573
    .local v6, differentTime:J
    add-long/2addr v8, v6

    move-wide v10, v8

    .line 575
    goto :goto_0
.end method

.method private static getServerVersionNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 104
    .local v1, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 110
    const-string v4, "CSShared"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 111
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v4, "serverVersion"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :goto_0
    return-object v3

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSyncFrequency(Landroid/content/Context;)Lcom/htc/cscore/util/CSUtil$syncFrequency;
    .locals 7
    .parameter "context"

    .prologue
    .line 166
    const/4 v1, 0x0

    .line 169
    .local v1, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    const-string v4, "CSShared"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 176
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v4, "syncFrequency"

    const/4 v5, -0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 179
    .local v3, syncFreq:I
    packed-switch v3, :pswitch_data_0

    .line 205
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->unknown:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    .end local v2           #preferences:Landroid/content/SharedPreferences;
    .end local v3           #syncFreq:I
    :goto_0
    return-object v4

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->unknown:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    .line 181
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #preferences:Landroid/content/SharedPreferences;
    .restart local v3       #syncFreq:I
    :pswitch_0
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->manual:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    .line 184
    :pswitch_1
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->push:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    .line 187
    :pswitch_2
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_hour:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    .line 190
    :pswitch_3
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_two_hours:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    .line 193
    :pswitch_4
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_three_hours:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    .line 196
    :pswitch_5
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_six_hours:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    .line 199
    :pswitch_6
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_twelve_hour:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    .line 202
    :pswitch_7
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_day:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getVersion(Landroid/content/Context;)Lcom/htc/cscore/util/CSVersion;
    .locals 6
    .parameter "context"

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 118
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v0, Lcom/htc/cscore/util/CSVersion;

    invoke-direct {v0}, Lcom/htc/cscore/util/CSVersion;-><init>()V

    .line 119
    .local v0, cversion:Lcom/htc/cscore/util/CSVersion;
    const-string v4, "com.htc.cs"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 120
    .local v2, pInfo:Landroid/content/pm/PackageInfo;
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v4, v0, Lcom/htc/cscore/util/CSVersion;->CSEngineVersionCode:I

    .line 121
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, v0, Lcom/htc/cscore/util/CSVersion;->CSEngineVersionName:Ljava/lang/String;

    .line 122
    const-string v4, "DevBuild"

    iput-object v4, v0, Lcom/htc/cscore/util/CSVersion;->HandsetLibraryVersion:Ljava/lang/String;

    .line 123
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getServerVersionNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/cscore/util/CSVersion;->ServerVersionNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0           #cversion:Lcom/htc/cscore/util/CSVersion;
    .end local v2           #pInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static handsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .locals 10
    .parameter "emailAddress"
    .parameter "handsetDeviceId"
    .parameter "AuthTicket"
    .parameter "packageName"
    .parameter "pm"
    .parameter "mContext"
    .parameter "restServicesProxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 646
    invoke-static {p5}, Lcom/htc/cscore/util/CSUtil;->getDeviceToken(Landroid/content/Context;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v6

    .line 648
    .local v6, devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    iget-object v0, v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 649
    const/4 v8, 0x0

    .line 650
    .local v8, i:I
    :cond_0
    :goto_0
    const/4 v0, 0x2

    if-ge v8, v0, :cond_3

    .line 652
    :try_start_0
    invoke-static {p5}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p5}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p5}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 657
    const/4 v8, 0x3

    goto :goto_0

    .line 658
    :catch_0
    move-exception v7

    .line 659
    .local v7, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    const-string v0, "MyHTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSUserPreferenceUtil handsetLogin ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {v7}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v9

    .line 661
    .local v9, type:Ljava/lang/String;
    const-string v0, "MissingDevice"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ClientInvalidCredentialsException"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 662
    :cond_1
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v1, "CSUtil.handsetLogin"

    invoke-direct {v0, v1, v7}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 664
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 665
    const/4 v0, 0x2

    if-le v8, v0, :cond_0

    .line 666
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v1, "CSUtil.handsetLogin"

    invoke-direct {v0, v1, v7}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 672
    .end local v7           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    .end local v8           #i:I
    .end local v9           #type:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 673
    invoke-static {p5, v6}, Lcom/htc/cscore/util/CSUtil;->setDeviceToken(Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    .line 674
    :cond_4
    return-object v6
.end method

.method public static hasLocationService(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 132
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    const/4 v1, 0x0

    .line 138
    .local v1, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v5, "com.htc.cs"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 144
    const-string v4, "CSShared"

    invoke-virtual {v1, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 145
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v4, "locationService"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 146
    .local v3, serverName:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 151
    .end local v1           #otherAppsContext:Landroid/content/Context;
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    .end local v3           #serverName:Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return v4

    .line 139
    .restart local v1       #otherAppsContext:Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CSUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isCSAccountExist(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 156
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.htc.cs"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 157
    .local v0, account:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 158
    const/4 v1, 0x1

    .line 160
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCSActive(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcCSFlag:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCSPackageInstalled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 89
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.htc.cs"

    const/16 v5, 0x2000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 90
    .local v1, pInfo:Landroid/content/pm/PackageInfo;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcCSFlag:Z

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.htc.cs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    const/4 v3, 0x1

    .line 96
    .end local v1           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isMmsAppExist(Landroid/content/Context;)Z
    .locals 5
    .parameter "userContext"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 864
    const/4 v1, 0x0

    .line 866
    .local v1, mmsContext:Landroid/content/Context;
    :try_start_0
    const-string v3, "com.android.mms"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 871
    :goto_0
    if-eqz v1, :cond_0

    .line 872
    const/4 v2, 0x1

    .line 874
    :cond_0
    return v2

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPhoneAppExist(Landroid/content/Context;)Z
    .locals 3
    .parameter "userContext"

    .prologue
    .line 823
    const/4 v1, 0x0

    .line 825
    .local v1, isPhoneAppStr:Ljava/lang/String;
    :try_start_0
    const-string v2, "ro.phone.function"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 829
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 830
    const-string v1, "1"

    .line 832
    :cond_0
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 833
    const/4 v2, 0x1

    .line 835
    :goto_1
    return v2

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 835
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isSyncStopped(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 843
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 844
    const/4 v2, 0x0

    .line 847
    .local v2, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 853
    const-string v4, "CSShared"

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 854
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v4, "SyncStatus"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 857
    .end local v2           #otherAppsContext:Landroid/content/Context;
    .end local v3           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v0

    .line 848
    .restart local v2       #otherAppsContext:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 849
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isWifiOnlyDevice()Z
    .locals 1

    .prologue
    .line 878
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    return v0
.end method

.method public static renewDataCenter(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "errorCode"

    .prologue
    .line 767
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.cs.renew.datacenter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 768
    .local v0, intentDashboard:Landroid/content/Intent;
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 769
    const-string v1, "serverUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 771
    return-void
.end method

.method public static renewToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .locals 12
    .parameter "emailAddress"
    .parameter "handsetDeviceId"
    .parameter "AuthTicket"
    .parameter "packageName"
    .parameter "pm"
    .parameter "mContext"
    .parameter "restServicesProxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    .line 698
    const/4 v10, 0x0

    .line 699
    .local v10, i:I
    const/4 v7, 0x0

    .line 703
    .local v7, devicetoken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :cond_0
    :goto_0
    const/4 v1, 0x2

    if-ge v10, v1, :cond_3

    .line 705
    :try_start_0
    invoke-static/range {p5 .. p5}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object/from16 v1, p6

    invoke-virtual/range {v1 .. v6}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 711
    const/4 v10, 0x3

    goto :goto_0

    .line 713
    :catch_0
    move-exception v8

    .line 714
    .local v8, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSUserPreferenceUtil renewToken ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-virtual {v8}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v11

    .line 716
    .local v11, type:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/cscore/util/CSUtil;->getExceptionErrorCode(Lcom/htc/cscore/restapi/exceptions/CSException;)Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    move-result-object v9

    .line 717
    .local v9, ec:Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    sget-object v1, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->MissingDevice:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    if-eq v9, v1, :cond_1

    sget-object v1, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidCredentials:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    if-ne v9, v1, :cond_2

    .line 718
    :cond_1
    new-instance v1, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v2, "CSUtil.handsetLogin"

    invoke-direct {v1, v2, v8}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 720
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 721
    const/4 v1, 0x2

    if-le v10, v1, :cond_0

    .line 722
    new-instance v1, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v2, "CSUtil.handsetLogin"

    invoke-direct {v1, v2, v8}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 726
    .end local v8           #e:Lcom/htc/cscore/restapi/exceptions/CSException;
    .end local v9           #ec:Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    .end local v11           #type:Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 727
    move-object/from16 v0, p5

    invoke-static {v0, v7}, Lcom/htc/cscore/util/CSUtil;->setDeviceToken(Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    .line 728
    :cond_4
    return-object v7
.end method

.method public static setDeviceToken(Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V
    .locals 4
    .parameter "context"
    .parameter "deviceToken"

    .prologue
    .line 745
    const-string v2, "CSToken"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 746
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 747
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AuthKey"

    iget-object v3, p1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 748
    const-string v2, "emailverified"

    iget-object v3, p1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsEmailVerified:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 749
    const-string v2, "handsetverified"

    iget-object v3, p1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsHandsetVerified:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 750
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 753
    return-void
.end method
