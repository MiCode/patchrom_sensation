.class Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
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
    .line 265
    const-string v0, "telephony.db"

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 266
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 267
    return-void
.end method

.method static synthetic access$700(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 29
    .parameter "parser"

    .prologue
    .line 528
    const-string v26, "apn"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 529
    const/4 v10, 0x0

    .line 648
    :cond_0
    :goto_0
    return-object v10

    .line 532
    :cond_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 534
    .local v10, map:Landroid/content/ContentValues;
    const/16 v26, 0x0

    const-string v27, "mcc"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 535
    .local v11, mcc:Ljava/lang/String;
    const/16 v26, 0x0

    const-string v27, "mnc"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 536
    .local v15, mnc:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 538
    .local v16, numeric:Ljava/lang/String;
    const-string v26, "numeric"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v26, "mcc"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v26, "mnc"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v26, "name"

    const/16 v27, 0x0

    const-string v28, "carrier"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v26, "apn"

    const/16 v27, 0x0

    const-string v28, "apn"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v26, "user"

    const/16 v27, 0x0

    const-string v28, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v26, "server"

    const/16 v27, 0x0

    const-string v28, "server"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v26, "password"

    const/16 v27, 0x0

    const-string v28, "password"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const/16 v26, 0x0

    const-string v27, "proxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 549
    .local v21, proxy:Ljava/lang/String;
    if-eqz v21, :cond_2

    .line 550
    const-string v26, "proxy"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_2
    const/16 v26, 0x0

    const-string v27, "port"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 553
    .local v18, port:Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 554
    const-string v26, "port"

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_3
    const/16 v26, 0x0

    const-string v27, "mmsproxy"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 557
    .local v14, mmsproxy:Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 558
    const-string v26, "mmsproxy"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_4
    const/16 v26, 0x0

    const-string v27, "mmsport"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 561
    .local v12, mmsport:Ljava/lang/String;
    if-eqz v12, :cond_5

    .line 562
    const-string v26, "mmsport"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_5
    const/16 v26, 0x0

    const-string v27, "mmsprotocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 565
    .local v13, mmsprotocol:Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 566
    const-string v26, "mmsprotocol"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_6
    const/16 v26, 0x0

    const-string v27, "state"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 570
    .local v24, state:Ljava/lang/String;
    if-eqz v24, :cond_7

    .line 571
    const-string v26, "state"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_7
    const-string v26, "mmsc"

    const/16 v27, 0x0

    const-string v28, "mmsc"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const/16 v26, 0x0

    const-string v27, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 575
    .local v25, type:Ljava/lang/String;
    if-eqz v25, :cond_8

    .line 576
    const-string v26, "type"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_8
    const/16 v26, 0x0

    const-string v27, "authtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, auth:Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 581
    const-string v26, "authtype"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 585
    :cond_9
    const/16 v26, 0x0

    const-string v27, "operator"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 586
    .local v17, op:Ljava/lang/String;
    if-eqz v17, :cond_a

    .line 587
    const-string v26, "operator"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_a
    const/16 v26, 0x0

    const-string v27, "area"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, area:Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 594
    const-string v26, "area"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_b
    const/16 v26, 0x0

    const-string v27, "identifier"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 600
    .local v9, identifier:Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 601
    const-string v26, "identifier"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_c
    const/16 v26, 0x0

    const-string v27, "sim_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 607
    .local v23, sim_type:Ljava/lang/String;
    if-eqz v23, :cond_d

    .line 608
    const-string v26, "sim_type"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_d
    const/16 v26, 0x0

    const-string v27, "gid1"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 614
    .local v8, gid1:Ljava/lang/String;
    if-eqz v8, :cond_e

    .line 615
    const-string v26, "gid1"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_e
    const/16 v26, 0x0

    const-string v27, "databearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 620
    .local v7, databearer:Ljava/lang/String;
    if-eqz v7, :cond_f

    .line 621
    const-string v26, "databearer"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_f
    const/16 v26, 0x0

    const-string v27, "pppnumber"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 624
    .local v19, pppnumber:Ljava/lang/String;
    if-eqz v19, :cond_10

    .line 625
    const-string v26, "pppnumber"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_10
    const/16 v26, 0x0

    const-string v27, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 628
    .local v20, protocol:Ljava/lang/String;
    if-eqz v20, :cond_11

    .line 629
    const-string v26, "protocol"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_11
    const/16 v26, 0x0

    const-string v27, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 632
    .local v22, roamingProtocol:Ljava/lang/String;
    if-eqz v22, :cond_12

    .line 633
    const-string v26, "roaming_protocol"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_12
    const/16 v26, 0x0

    const-string v27, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 638
    .local v6, carrierEnabled:Ljava/lang/String;
    if-eqz v6, :cond_13

    .line 639
    const-string v26, "carrier_enabled"

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 642
    :cond_13
    const/16 v26, 0x0

    const-string v27, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 643
    .local v5, bearer:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 644
    const-string v26, "bearer"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method

.method private static getVersion(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const/high16 v4, 0xf

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 272
    .local v3, r:Landroid/content/res/Resources;
    const/high16 v5, 0x10f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 274
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v5, "apns"

    invoke-static {v1, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 275
    const/4 v5, 0x0

    const-string v6, "version"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 276
    .local v2, publicversion:I
    or-int/2addr v4, v2

    .line 281
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .end local v2           #publicversion:I
    :goto_0
    return v4

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "TelephonyProvider"

    const-string v6, "Can\'t get version of APN database"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
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
    .line 350
    const/16 v16, -0x1

    .line 352
    .local v16, publicversion:I
    const-string v14, "/system/etc/customer"

    .line 353
    .local v14, filepath:Ljava/lang/String;
    const-string v13, "apns.xml"

    .line 354
    .local v13, filename:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .local v8, customFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 357
    const/4 v10, 0x0

    .line 358
    .local v10, customFileReader:Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 359
    .local v9, customFileParser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/android/providers/telephony/TelephonyProvider;->access$602(Z)Z

    .line 361
    :try_start_0
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 362
    .end local v10           #customFileReader:Ljava/io/FileReader;
    .local v11, customFileReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 363
    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 364
    const-string v18, "apns"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 365
    const/16 v18, 0x0

    const-string v19, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 366
    const-string v18, "internal"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v9, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApnsWithTransaction(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f

    .line 375
    if-eqz v11, :cond_0

    .line 376
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    .line 382
    .end local v9           #customFileParser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #customFileReader:Ljava/io/FileReader;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$600()Z

    move-result v18

    if-nez v18, :cond_1

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 385
    .local v17, r:Landroid/content/res/Resources;
    const/high16 v18, 0x10f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 387
    .local v15, parser:Landroid/content/res/XmlResourceParser;
    :try_start_3
    const-string v18, "apns"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 388
    const/16 v18, 0x0

    const-string v19, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 389
    const-string v18, "internal"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v15, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApnsWithTransaction(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 393
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    .line 398
    .end local v15           #parser:Landroid/content/res/XmlResourceParser;
    .end local v17           #r:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 400
    .local v4, confparser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v18

    const-string v19, "etc/apns-conf.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 401
    .local v3, confFile:Ljava/io/File;
    const/4 v5, 0x0

    .line 403
    .local v5, confreader:Ljava/io/FileReader;
    :try_start_4
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 404
    .end local v5           #confreader:Ljava/io/FileReader;
    .local v6, confreader:Ljava/io/FileReader;
    :try_start_5
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 405
    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 406
    const-string v18, "apns"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 409
    const/16 v18, 0x0

    const-string v19, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 410
    .local v7, confversion:I
    move/from16 v0, v16

    if-eq v0, v7, :cond_2

    .line 411
    const-string v18, "TelephonyProvider"

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

    .line 416
    :cond_2
    const-string v18, "external"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v4, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApnsWithTransaction(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d

    .line 423
    if-eqz v6, :cond_3

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    move-object v5, v6

    .line 425
    .end local v6           #confreader:Ljava/io/FileReader;
    .end local v7           #confversion:I
    .restart local v5       #confreader:Ljava/io/FileReader;
    :cond_4
    :goto_2
    return-void

    .line 367
    .end local v3           #confFile:Ljava/io/File;
    .end local v4           #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v9       #customFileParser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #customFileReader:Ljava/io/FileReader;
    :catch_0
    move-exception v12

    .line 368
    .local v12, e:Ljava/io/FileNotFoundException;
    :goto_3
    const/16 v18, 0x0

    :try_start_7
    invoke-static/range {v18 .. v18}, Lcom/android/providers/telephony/TelephonyProvider;->access$602(Z)Z

    .line 369
    const-string v18, "TelephonyProvider"

    const-string v19, "custom apn file not found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 375
    if-eqz v10, :cond_0

    .line 376
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 378
    :catch_1
    move-exception v18

    goto/16 :goto_0

    .line 370
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v12

    .line 371
    .local v12, e:Ljava/lang/Exception;
    :goto_4
    const/16 v18, 0x0

    :try_start_9
    invoke-static/range {v18 .. v18}, Lcom/android/providers/telephony/TelephonyProvider;->access$602(Z)Z

    .line 372
    const-string v18, "TelephonyProvider"

    const-string v19, "Got exception while loading APN from /system/etc/customize"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 375
    if-eqz v10, :cond_0

    .line 376
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 378
    :catch_3
    move-exception v18

    goto/16 :goto_0

    .line 374
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 375
    :goto_5
    if-eqz v10, :cond_5

    .line 376
    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 378
    :cond_5
    :goto_6
    throw v18

    .line 390
    .end local v9           #customFileParser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #customFileReader:Ljava/io/FileReader;
    .restart local v15       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v17       #r:Landroid/content/res/Resources;
    :catch_4
    move-exception v12

    .line 391
    .restart local v12       #e:Ljava/lang/Exception;
    :try_start_c
    const-string v18, "TelephonyProvider"

    const-string v19, "Got exception while loading APN database."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 393
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1

    .end local v12           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v18

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    throw v18

    .line 423
    .end local v15           #parser:Landroid/content/res/XmlResourceParser;
    .end local v17           #r:Landroid/content/res/Resources;
    .restart local v3       #confFile:Ljava/io/File;
    .restart local v4       #confparser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #confreader:Ljava/io/FileReader;
    .restart local v7       #confversion:I
    :catch_5
    move-exception v18

    move-object v5, v6

    .line 424
    .end local v6           #confreader:Ljava/io/FileReader;
    .restart local v5       #confreader:Ljava/io/FileReader;
    goto :goto_2

    .line 417
    .end local v7           #confversion:I
    :catch_6
    move-exception v18

    .line 423
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

    .line 420
    :catch_8
    move-exception v12

    .line 421
    .restart local v12       #e:Ljava/lang/Exception;
    :goto_8
    :try_start_e
    const-string v18, "TelephonyProvider"

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

    .line 423
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

    .line 378
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

    .line 423
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

    .line 420
    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v6       #confreader:Ljava/io/FileReader;
    :catch_d
    move-exception v12

    move-object v5, v6

    .end local v6           #confreader:Ljava/io/FileReader;
    .restart local v5       #confreader:Ljava/io/FileReader;
    goto :goto_8

    .line 417
    .end local v5           #confreader:Ljava/io/FileReader;
    .restart local v6       #confreader:Ljava/io/FileReader;
    :catch_e
    move-exception v18

    move-object v5, v6

    .end local v6           #confreader:Ljava/io/FileReader;
    .restart local v5       #confreader:Ljava/io/FileReader;
    goto :goto_7

    .line 374
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

    .line 370
    .end local v10           #customFileReader:Ljava/io/FileReader;
    .restart local v11       #customFileReader:Ljava/io/FileReader;
    :catch_f
    move-exception v12

    move-object v10, v11

    .end local v11           #customFileReader:Ljava/io/FileReader;
    .restart local v10       #customFileReader:Ljava/io/FileReader;
    goto/16 :goto_4

    .line 367
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
    .line 725
    const-string v0, "authtype"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    const-string v0, "authtype"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 728
    :cond_0
    const-string v0, "protocol"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 729
    const-string v0, "protocol"

    const-string v1, "IP"

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_1
    const-string v0, "roaming_protocol"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 732
    const-string v0, "roaming_protocol"

    const-string v1, "IP"

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_2
    const-string v0, "carrier_enabled"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 737
    const-string v0, "carrier_enabled"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 739
    :cond_3
    const-string v0, "bearer"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 740
    const-string v0, "bearer"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 744
    :cond_4
    const-string v0, "carriers"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 745
    return-void
.end method

.method private loadApnsWithTransaction(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 6
    .parameter "db"
    .parameter "parser"
    .parameter "fromWhere"

    .prologue
    .line 659
    if-eqz p2, :cond_4

    .line 661
    const/4 v0, 0x0

    .line 662
    .local v0, c:I
    const/16 v1, 0x64

    .line 665
    .local v1, count:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 666
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v3

    .line 667
    .local v3, row:Landroid/content/ContentValues;
    if-eqz v3, :cond_3

    .line 668
    if-nez v0, :cond_1

    .line 669
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 671
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 673
    if-eqz p3, :cond_2

    .line 674
    const-string v4, "insert_by"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_2
    const-string v4, "carriers"

    invoke-direct {p0, p1, v4, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 677
    const/16 v4, 0x64

    if-ne v0, v4, :cond_0

    .line 678
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 679
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 680
    const/4 v0, 0x0

    goto :goto_0

    .line 683
    :cond_3
    if-eqz v0, :cond_4

    .line 684
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 685
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 696
    .end local v0           #c:I
    .end local v1           #count:I
    .end local v3           #row:Landroid/content/ContentValues;
    :cond_4
    :goto_1
    return-void

    .line 690
    .restart local v0       #c:I
    .restart local v1       #count:I
    :catch_0
    move-exception v2

    .line 691
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "TelephonyProvider"

    const-string v5, "Got execption while getting perferred time zone."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 692
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 693
    .local v2, e:Ljava/io/IOException;
    const-string v4, "TelephonyProvider"

    const-string v5, "Got execption while getting perferred time zone."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 288
    const-string v0, "CREATE TABLE carriers(_id INTEGER PRIMARY KEY,name TEXT,numeric TEXT,mcc TEXT,mnc TEXT,apn TEXT,user TEXT,server TEXT,password TEXT,proxy TEXT,port TEXT,mmsproxy TEXT,mmsport TEXT,mmsprotocol TEXT,mmsc TEXT,authtype INTEGER,type TEXT,insert_by TEXT,operator TEXT,area TEXT,state TEXT,identifier TEXT,sim_type TEXT,gid1 TEXT,current INTEGER,protocol TEXT,roaming_protocol TEXT,carrier_enabled BOOLEAN,bearer INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 331
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

    .line 336
    :cond_1
    const-string v0, "ALTER TABLE carriers ADD COLUMN databearer TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 338
    const-string v0, "ALTER TABLE carriers ADD COLUMN pppnumber TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 343
    :cond_2
    const-string v0, "CREATE TABLE carriers_cache AS SELECT * FROM carriers;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 347
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 441
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

    #calls: Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/providers/telephony/TelephonyProvider;->access$400(Ljava/lang/String;)V

    .line 442
    const/high16 v3, 0x9

    if-ge p2, v3, :cond_0

    .line 443
    const-string v3, "ALTER TABLE carriers ADD COLUMN protocol TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 445
    const-string v3, "ALTER TABLE carriers ADD COLUMN roaming_protocol TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    :cond_0
    const/high16 v3, 0xa

    if-ge p2, v3, :cond_1

    .line 450
    const-string v3, "ALTER TABLE carriers ADD COLUMN area TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 454
    :cond_1
    const/high16 v3, 0xb

    if-ge p2, v3, :cond_2

    .line 455
    const-string v3, "ALTER TABLE carriers ADD COLUMN identifier TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 459
    :cond_2
    const/high16 v3, 0xc

    if-ge p2, v3, :cond_3

    .line 460
    const-string v3, "ALTER TABLE carriers ADD COLUMN sim_type TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 464
    :cond_3
    const/high16 v3, 0xd

    if-ge p2, v3, :cond_4

    .line 465
    const-string v3, "ALTER TABLE carriers ADD COLUMN gid1 TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 469
    :cond_4
    const/high16 v3, 0xe

    if-ge p2, v3, :cond_5

    .line 470
    const-string v3, "CREATE TABLE carriers_cache AS SELECT * FROM carriers;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 473
    :cond_5
    const/high16 v3, 0xf

    if-ge p2, v3, :cond_6

    .line 475
    const-string v3, "ALTER TABLE carriers ADD COLUMN carrier_enabled BOOLEAN DEFAULT 1;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 477
    const-string v3, "ALTER TABLE carriers ADD COLUMN bearer INTEGER DEFAULT 0;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 480
    const-string v3, "ALTER TABLE carriers_cache ADD COLUMN carrier_enabled BOOLEAN DEFAULT 1;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 482
    const-string v3, "ALTER TABLE carriers_cache ADD COLUMN bearer INTEGER DEFAULT 0;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 486
    :cond_6
    const-string v0, "insert_by = \'internal\' OR insert_by = \'external\'"

    .line 487
    .local v0, delWhere:Ljava/lang/String;
    const-string v3, "carriers"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 489
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 493
    iget-object v3, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v4, "preferred-apn"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 494
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 495
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "apn_id"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 496
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 519
    return-void
.end method
