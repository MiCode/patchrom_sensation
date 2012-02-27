.class Lcom/android/providers/telephony/GsmApnProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GsmApnProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/GsmApnProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 185
    const-string v0, "telephony.db"

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/providers/telephony/GsmApnProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 186
    iput-object p1, p0, Lcom/android/providers/telephony/GsmApnProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 187
    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/telephony/GsmApnProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/GsmApnProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 27
    .parameter "parser"

    .prologue
    .line 420
    const-string v24, "apn"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 421
    const/4 v8, 0x0

    .line 528
    :cond_0
    :goto_0
    return-object v8

    .line 424
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 426
    .local v8, map:Landroid/content/ContentValues;
    const/16 v24, 0x0

    const-string v25, "mcc"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 427
    .local v9, mcc:Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, "mnc"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 428
    .local v13, mnc:Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 430
    .local v14, numeric:Ljava/lang/String;
    const-string v24, "numeric"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v24, "mcc"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v24, "mnc"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v24, "name"

    const/16 v25, 0x0

    const-string v26, "carrier"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v24, "apn"

    const/16 v25, 0x0

    const-string v26, "apn"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v24, "user"

    const/16 v25, 0x0

    const-string v26, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v24, "server"

    const/16 v25, 0x0

    const-string v26, "server"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v24, "password"

    const/16 v25, 0x0

    const-string v26, "password"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/16 v24, 0x0

    const-string v25, "proxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 441
    .local v19, proxy:Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 442
    const-string v24, "proxy"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_2
    const/16 v24, 0x0

    const-string v25, "port"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 445
    .local v16, port:Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 446
    const-string v24, "port"

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_3
    const/16 v24, 0x0

    const-string v25, "mmsproxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 449
    .local v12, mmsproxy:Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 450
    const-string v24, "mmsproxy"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_4
    const/16 v24, 0x0

    const-string v25, "mmsport"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 453
    .local v10, mmsport:Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 454
    const-string v24, "mmsport"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_5
    const/16 v24, 0x0

    const-string v25, "mmsprotocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 457
    .local v11, mmsprotocol:Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 458
    const-string v24, "mmsprotocol"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_6
    const/16 v24, 0x0

    const-string v25, "state"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 462
    .local v22, state:Ljava/lang/String;
    if-eqz v22, :cond_7

    .line 463
    const-string v24, "state"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_7
    const-string v24, "mmsc"

    const/16 v25, 0x0

    const-string v26, "mmsc"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/16 v24, 0x0

    const-string v25, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 467
    .local v23, type:Ljava/lang/String;
    if-eqz v23, :cond_8

    .line 468
    const-string v24, "type"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_8
    const/16 v24, 0x0

    const-string v25, "authtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, auth:Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 473
    const-string v24, "authtype"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    :cond_9
    const/16 v24, 0x0

    const-string v25, "operator"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 478
    .local v15, op:Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 479
    const-string v24, "operator"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_a
    const/16 v24, 0x0

    const-string v25, "area"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, area:Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 486
    const-string v24, "area"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_b
    const/16 v24, 0x0

    const-string v25, "identifier"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 492
    .local v7, identifier:Ljava/lang/String;
    if-eqz v7, :cond_c

    .line 493
    const-string v24, "identifier"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_c
    const/16 v24, 0x0

    const-string v25, "sim_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 499
    .local v21, sim_type:Ljava/lang/String;
    if-eqz v21, :cond_d

    .line 500
    const-string v24, "sim_type"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_d
    const/16 v24, 0x0

    const-string v25, "gid1"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 506
    .local v6, gid1:Ljava/lang/String;
    if-eqz v6, :cond_e

    .line 507
    const-string v24, "gid1"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_e
    const/16 v24, 0x0

    const-string v25, "databearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, databearer:Ljava/lang/String;
    if-eqz v5, :cond_f

    .line 513
    const-string v24, "databearer"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_f
    const/16 v24, 0x0

    const-string v25, "pppnumber"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 516
    .local v17, pppnumber:Ljava/lang/String;
    if-eqz v17, :cond_10

    .line 517
    const-string v24, "pppnumber"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_10
    const/16 v24, 0x0

    const-string v25, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 520
    .local v18, protocol:Ljava/lang/String;
    if-eqz v18, :cond_11

    .line 521
    const-string v24, "protocol"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_11
    const/16 v24, 0x0

    const-string v25, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 524
    .local v20, roamingProtocol:Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 525
    const-string v24, "roaming_protocol"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getVersion(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const/high16 v4, 0xd

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 192
    .local v3, r:Landroid/content/res/Resources;
    const/high16 v5, 0x10f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 194
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v5, "apns"

    invoke-static {v1, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 195
    const/4 v5, 0x0

    const-string v6, "version"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 196
    .local v2, publicversion:I
    or-int/2addr v4, v2

    .line 201
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .end local v2           #publicversion:I
    :goto_0
    return v4

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "GsmApnProvider"

    const-string v6, "Can\'t get version of APN database"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v4
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 21
    .parameter "db"

    .prologue
    .line 262
    const/16 v16, -0x1

    .line 264
    .local v16, publicversion:I
    const-string v14, "/system/etc/customer"

    .line 265
    .local v14, filepath:Ljava/lang/String;
    const-string v13, "apns.xml"

    .line 266
    .local v13, filename:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .local v8, customFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 269
    const/4 v10, 0x0

    .line 270
    .local v10, customFileReader:Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 271
    .local v9, customFileParser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/android/providers/telephony/GsmApnProvider;->access$002(Z)Z

    .line 273
    :try_start_0
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 274
    .end local v10           #customFileReader:Ljava/io/FileReader;
    .local v11, customFileReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 275
    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 276
    const-string v18, "apns"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 277
    const/16 v18, 0x0

    const-string v19, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 278
    const-string v18, "internal"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v9, v2}, Lcom/android/providers/telephony/GsmApnProvider$DatabaseHelper;->loadApnsWithTransaction(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f

    .line 287
    if-eqz v11, :cond_0

    .line 288
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    .line 294
    .end local v9           #customFileParser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #customFileReader:Ljava/io/FileReader;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/providers/telephony/GsmApnProvider;->access$000()Z

    move-result v18

    if-nez v18, :cond_1

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/GsmApnProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 297
    .local v17, r:Landroid/content/res/Resources;
    const/high16 v18, 0x10f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 299
    .local v15, parser:Landroid/content/res/XmlResourceParser;
    :try_start_3
    const-string v18, "apns"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 300
    const/16 v18, 0x0

    const-string v19, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 301
    const-string v18, "internal"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v2}, Lcom/android/providers/telephony/GsmApnProvider$DatabaseHelper;->loadApnsWithTransaction(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 305
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    .line 310
    .end local v15           #parser:Landroid/content/res/XmlResourceParser;
    .end local v17           #r:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 312
    .local v4, confparser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v18

    const-string v19, "etc/apns-conf.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    .local v3, confFile:Ljava/io/File;
    const/4 v5, 0x0

    .line 315
    .local v5, confreader:Ljava/io/FileReader;
    :try_start_4
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 316
    .end local v5           #confreader:Ljava/io/FileReader;
    .local v6, confreader:Ljava/io/FileReader;
    :try_start_5
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 317
    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 318
    const-string v18, "apns"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 321
    const/16 v18, 0x0

    const-string v19, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 322
    .local v7, confversion:I
    move/from16 v0, v16

    if-eq v0, v7, :cond_2

    .line 323
    const-string v18, "GsmApnProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Internal APNS file version doesn\'t match "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_2
    const-string v18, "external"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v4, v2}, Lcom/android/providers/telephony/GsmApnProvider$DatabaseHelper;->loadApnsWithTransaction(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d

    .line 335
    if-eqz v6, :cond_3

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    move-object v5, v6

    .line 337
    .end local v6           #confreader:Ljava/io/FileReader;
    .end local v7           #confversion:I
    .restart local v5       #confreader:Ljava/io/FileReader;
    :cond_4
    :goto_2
    return-void

    .line 279
    .end local v3           #confFile:Ljava/io/File;
    .end local v4           #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v9       #customFileParser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #customFileReader:Ljava/io/FileReader;
    :catch_0
    move-exception v12

    .line 280
    .local v12, e:Ljava/io/FileNotFoundException;
    :goto_3
    const/16 v18, 0x0

    :try_start_7
    invoke-static/range {v18 .. v18}, Lcom/android/providers/telephony/GsmApnProvider;->access$002(Z)Z

    .line 281
    const-string v18, "GsmApnProvider"

    const-string v19, "custom apn file not found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 287
    if-eqz v10, :cond_0

    .line 288
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 290
    :catch_1
    move-exception v18

    goto/16 :goto_0

    .line 282
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v12

    .line 283
    .local v12, e:Ljava/lang/Exception;
    :goto_4
    const/16 v18, 0x0

    :try_start_9
    invoke-static/range {v18 .. v18}, Lcom/android/providers/telephony/GsmApnProvider;->access$002(Z)Z

    .line 284
    const-string v18, "GsmApnProvider"

    const-string v19, "Got exception while loading APN from /system/etc/customize"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 287
    if-eqz v10, :cond_0

    .line 288
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 290
    :catch_3
    move-exception v18

    goto/16 :goto_0

    .line 286
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 287
    :goto_5
    if-eqz v10, :cond_5

    .line 288
    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 290
    :cond_5
    :goto_6
    throw v18

    .line 302
    .end local v9           #customFileParser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #customFileReader:Ljava/io/FileReader;
    .restart local v15       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v17       #r:Landroid/content/res/Resources;
    :catch_4
    move-exception v12

    .line 303
    .restart local v12       #e:Ljava/lang/Exception;
    :try_start_c
    const-string v18, "GsmApnProvider"

    const-string v19, "Got exception while loading APN database."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 305
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .end local v12           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v18

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    throw v18

    .line 335
    .end local v15           #parser:Landroid/content/res/XmlResourceParser;
    .end local v17           #r:Landroid/content/res/Resources;
    .restart local v3       #confFile:Ljava/io/File;
    .restart local v4       #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #confreader:Ljava/io/FileReader;
    .restart local v7       #confversion:I
    :catch_5
    move-exception v18

    move-object v5, v6

    .line 336
    .end local v6           #confreader:Ljava/io/FileReader;
    .restart local v5       #confreader:Ljava/io/FileReader;
    goto :goto_2

    .line 329
    .end local v7           #confversion:I
    :catch_6
    move-exception v18

    .line 335
    :goto_7
    if-eqz v5, :cond_4

    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_2

    :catch_7
    move-exception v18

    goto :goto_2

    .line 332
    :catch_8
    move-exception v12

    .line 333
    .restart local v12       #e:Ljava/lang/Exception;
    :goto_8
    :try_start_e
    const-string v18, "GsmApnProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception while parsing \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 335
    if-eqz v5, :cond_4

    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_2

    :catch_9
    move-exception v18

    goto/16 :goto_2

    .end local v12           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v18

    :goto_9
    if-eqz v5, :cond_6

    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    :cond_6
    :goto_a
    throw v18

    .line 290
    .end local v3           #confFile:Ljava/io/File;
    .end local v4           #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v9       #customFileParser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #customFileReader:Ljava/io/FileReader;
    :catch_a
    move-exception v18

    goto/16 :goto_0

    .end local v11           #customFileReader:Ljava/io/FileReader;
    .restart local v10       #customFileReader:Ljava/io/FileReader;
    :catch_b
    move-exception v19

    goto :goto_6

    .line 335
    .end local v9           #customFileParser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #customFileReader:Ljava/io/FileReader;
    .restart local v3       #confFile:Ljava/io/File;
    .restart local v4       #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #confreader:Ljava/io/FileReader;
    :catch_c
    move-exception v19

    goto :goto_a

    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v6       #confreader:Ljava/io/FileReader;
    :catchall_3
    move-exception v18

    move-object v5, v6

    .end local v6           #confreader:Ljava/io/FileReader;
    .restart local v5       #confreader:Ljava/io/FileReader;
    goto :goto_9

    .line 332
    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v6       #confreader:Ljava/io/FileReader;
    :catch_d
    move-exception v12

    move-object v5, v6

    .end local v6           #confreader:Ljava/io/FileReader;
    .restart local v5       #confreader:Ljava/io/FileReader;
    goto :goto_8

    .line 329
    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v6       #confreader:Ljava/io/FileReader;
    :catch_e
    move-exception v18

    move-object v5, v6

    .end local v6           #confreader:Ljava/io/FileReader;
    .restart local v5       #confreader:Ljava/io/FileReader;
    goto :goto_7

    .line 286
    .end local v3           #confFile:Ljava/io/File;
    .end local v4           #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v9       #customFileParser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #customFileReader:Ljava/io/FileReader;
    :catchall_4
    move-exception v18

    move-object v10, v11

    .end local v11           #customFileReader:Ljava/io/FileReader;
    .restart local v10       #customFileReader:Ljava/io/FileReader;
    goto :goto_5

    .line 282
    .end local v10           #customFileReader:Ljava/io/FileReader;
    .restart local v11       #customFileReader:Ljava/io/FileReader;
    :catch_f
    move-exception v12

    move-object v10, v11

    .end local v11           #customFileReader:Ljava/io/FileReader;
    .restart local v10       #customFileReader:Ljava/io/FileReader;
    goto/16 :goto_4

    .line 279
    .end local v10           #customFileReader:Ljava/io/FileReader;
    .restart local v11       #customFileReader:Ljava/io/FileReader;
    :catch_10
    move-exception v12

    move-object v10, v11

    .end local v11           #customFileReader:Ljava/io/FileReader;
    .restart local v10       #customFileReader:Ljava/io/FileReader;
    goto/16 :goto_3
.end method

.method private insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "db"
    .parameter "table"
    .parameter "row"

    .prologue
    .line 605
    const-string v0, "authtype"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    const-string v0, "authtype"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    :cond_0
    const-string v0, "protocol"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 609
    const-string v0, "protocol"

    const-string v1, "IP"

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :cond_1
    const-string v0, "roaming_protocol"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 612
    const-string v0, "roaming_protocol"

    const-string v1, "IP"

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_2
    const-string v0, "carriers"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 615
    return-void
.end method

.method private loadApnsWithTransaction(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 6
    .parameter "db"
    .parameter "parser"
    .parameter "fromWhere"

    .prologue
    .line 539
    if-eqz p2, :cond_4

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, c:I
    const/16 v1, 0x64

    .line 545
    .local v1, count:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 546
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/GsmApnProvider$DatabaseHelper;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v3

    .line 547
    .local v3, row:Landroid/content/ContentValues;
    if-eqz v3, :cond_3

    .line 548
    if-nez v0, :cond_1

    .line 549
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 551
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 553
    if-eqz p3, :cond_2

    .line 554
    const-string v4, "insert_by"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_2
    const-string v4, "carriers"

    invoke-direct {p0, p1, v4, v3}, Lcom/android/providers/telephony/GsmApnProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 557
    const/16 v4, 0x64

    if-ne v0, v4, :cond_0

    .line 558
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 559
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 560
    const/4 v0, 0x0

    goto :goto_0

    .line 563
    :cond_3
    if-eqz v0, :cond_4

    .line 564
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 565
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 576
    .end local v0           #c:I
    .end local v1           #count:I
    .end local v3           #row:Landroid/content/ContentValues;
    :cond_4
    :goto_1
    return-void

    .line 570
    .restart local v0       #c:I
    .restart local v1       #count:I
    :catch_0
    move-exception v2

    .line 571
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "GsmApnProvider"

    const-string v5, "Got execption while getting perferred time zone."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 572
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 573
    .local v2, e:Ljava/io/IOException;
    const-string v4, "GsmApnProvider"

    const-string v5, "Got execption while getting perferred time zone."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 208
    const-string v0, "CREATE TABLE carriers(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsprotocol TEXT,mmsc TEXT,authtype INTEGER,type TEXT,insert_by TEXT,operator TEXT,area TEXT,state TEXT,identifier TEXT,sim_type TEXT,gid1 TEXT,current INTEGER,protocol TEXT,roaming_protocol TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x9d

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 252
    :cond_1
    const-string v0, "ALTER TABLE carriers ADD COLUMN databearer TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 254
    const-string v0, "ALTER TABLE carriers ADD COLUMN pppnumber TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 258
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/GsmApnProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 259
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpgrade: old = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/providers/telephony/GsmApnProvider;->Log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/providers/telephony/GsmApnProvider;->access$100(Ljava/lang/String;)V

    .line 351
    const/high16 v3, 0x9

    if-ge p2, v3, :cond_0

    .line 352
    const-string v3, "ALTER TABLE carriers ADD COLUMN protocol TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 354
    const-string v3, "ALTER TABLE carriers ADD COLUMN roaming_protocol TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 358
    :cond_0
    const/high16 v3, 0xa

    if-ge p2, v3, :cond_1

    .line 359
    const-string v3, "ALTER TABLE carriers ADD COLUMN area TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 363
    :cond_1
    const/high16 v3, 0xb

    if-ge p2, v3, :cond_2

    .line 364
    const-string v3, "ALTER TABLE carriers ADD COLUMN identifier TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 368
    :cond_2
    const/high16 v3, 0xc

    if-ge p2, v3, :cond_3

    .line 369
    const-string v3, "ALTER TABLE carriers ADD COLUMN sim_type TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    :cond_3
    const/high16 v3, 0xd

    if-ge p2, v3, :cond_4

    .line 374
    const-string v3, "ALTER TABLE carriers ADD COLUMN gid1 TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 378
    :cond_4
    const-string v0, "insert_by = \'internal\' OR insert_by = \'external\'"

    .line 379
    .local v0, delWhere:Ljava/lang/String;
    const-string v3, "carriers"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 381
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/GsmApnProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 385
    iget-object v3, p0, Lcom/android/providers/telephony/GsmApnProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v4, "preferred-apn"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 386
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 387
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "apn_id"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 388
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    return-void
.end method
